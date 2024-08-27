struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_u32(0u, _wgslsmith_div_u32(_wgslsmith_div_u32(~countOneBits(4294967295u), ~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(34868u, 52252u, 39022u, 33620u), vec4<u32>(1u, 44637u, 1261u, 4294967295u))), ~(~(~1u))));
    return ~(_wgslsmith_mult_u32(1u, ~(~83546u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(7020u, countOneBits(1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 6200u), ~vec2<u32>(18736u, 55258u))));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = arg_0.c;
    let var_1 = Struct_4(-1214f, _wgslsmith_dot_vec2_u32(~arg_0.d.yx, vec2<u32>(~arg_0.b, 4294967295u)) | 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wzy) + var_0), vec4<u32>(_wgslsmith_add_u32(11684u, ~func_3(vec3<bool>(true, true, false))), 9655u, 4294967295u, ~1u));
    var var_2 = Struct_1(true, vec3<bool>(false, ~1u >= _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.b, arg_0.d.x), ~var_1.d.x), 39023i != arg_2), vec2<bool>(true, any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))), var_1.c.x, vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, false)) || true, true));
    var var_3 = Struct_1(true, var_2.e.yxw, !(!select(vec2<bool>(var_2.b.x, var_2.e.x), var_2.e.yz, !var_2.b.x)), var_1.a, vec4<bool>(true, !(!(-1092f > arg_1.x)), false, any(select(vec2<bool>(var_2.e.x, true), !vec2<bool>(var_2.e.x, true), select(var_2.b.x, true, true)))));
    let var_4 = max(abs(~(~var_1.d.wzw)), var_1.d.wyw) << (((vec3<u32>(var_1.d.x, ~arg_0.d.x, func_3(vec3<bool>(true, false, false))) | select(arg_0.d.xzw, vec3<u32>(71361u, 110529u, arg_0.d.x), vec3<bool>(true, true, true))) | vec3<u32>(abs(40433u ^ var_1.b), arg_0.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x), min(10201u, 0u), 1u))) % vec3<u32>(32u));
    return (var_1.d.x & _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(~1u, 1u, 0u))) < arg_0.d.x;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = ~arg_0.x;
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(false & any(vec4<bool>(false, false, false, false)), select(true, true, all(vec4<bool>(true, false, false, true))), true), vec3<bool>(true, true, true));
    let var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 38549u), arg_0.xx, arg_0.ww), vec2<u32>(4294967295u, 0u), select(var_1.yy, vec2<bool>(true, true), vec2<bool>(true, false))), arg_0.yz), vec2<u32>(0u, ~4294967295u) ^ ~min(vec2<u32>(arg_0.x, 3076u), vec2<u32>(arg_0.x, var_0)));
    var_1 = vec3<bool>(func_2(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-403f, -1000f))), var_0, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-253f, 327f, -640f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1324f, 210f, -136f), vec3<f32>(-1198f, -967f, 497f)))), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(483f, 345f, -1349f, 1000f), vec4<f32>(235f, -1221f, 1045f, -229f))) - vec4<f32>(-660f, 338f, 267f, 1774f))), u_input.b.x), var_1.x, any(var_1.yx));
    let var_3 = min(abs(36069u), ~abs(61792u) << (~(~arg_0.x) % 32u)) << (firstTrailingBit(firstLeadingBit(arg_0.x)) % 32u);
    return Struct_1(!var_1.x, !vec3<bool>(true, var_1.x, var_1.x), select(vec2<bool>(var_1.x && var_1.x, true), !(!select(vec2<bool>(var_1.x, true), var_1.yy, var_1.yx)), !var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-394f)) + 1000f)))), !(!(!(!vec4<bool>(false, true, var_1.x, true)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_3, arg_3: f32) -> vec3<u32> {
    return ~(~(~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(20474u, 82441u, 0u), any(arg_2.d.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(~vec3<i32>(u_input.b.x, u_input.a.x, 1i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.a.x), vec3<i32>(29568i, 0i, u_input.a.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.a.x, 21931i), vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i)), Struct_3(-15722i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1387f, -1000f, 2731f), vec3<f32>(377f, -988f, 1724f))), reverseBits(u_input.a), func_1(vec4<u32>(89365u, 4294967295u, 22751u, 29268u)), vec3<i32>(-42299i, 26539i, -2147483647i) ^ vec3<i32>(1997i, u_input.b.x, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(213f, 264f)) - 1f)) & ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(28974u, 32315u, 0u), vec3<u32>(7513u, 4294967295u, 4294967295u)), select(select(vec3<u32>(12544u, 48092u, 3775u), vec3<u32>(1u, 4196u, 29089u), vec3<bool>(false, false, true)), select(vec3<u32>(1u, 4294967295u, 2766u), vec3<u32>(17544u, 0u, 1u), true), vec3<bool>(false, false, true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-351f, 1062f))), -566f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -169f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, -363f, 678f) - vec3<f32>(1344f, 1741f, 281f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2165f, 691f, 1415f) - vec3<f32>(906f, 270f, -188f)), func_1(vec4<u32>(var_0.x, 57293u, 0u, 4294967295u)).c.x)))))), select(vec3<bool>(u_input.a.x > _wgslsmith_mod_i32(u_input.a.x, 14986i), false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), var_0.x == var_0.x), var_0.x <= _wgslsmith_sub_u32(var_0.x & 15475u, 1u))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(240f * var_1.x)), _wgslsmith_add_u32(abs(4294967295u << (~var_0.x % 32u)), abs(1u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * 1797f), -269f, var_1.x), var_1))), abs(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(var_0.x, var_0.x), 5551u, _wgslsmith_dot_vec4_u32(vec4<u32>(4685u, 10626u, var_0.x, 64330u), vec4<u32>(var_0.x, var_0.x, 29084u, var_0.x)), func_3(vec3<bool>(false, true, false))))));
    var var_3 = var_2.d.zwx;
    var var_4 = _wgslsmith_clamp_u32(5560u, 1u, ~(~(~(var_3.x & 29849u))));
    var var_5 = Struct_2(select(vec3<bool>(any(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, false)) | true, true), select(vec3<bool>(true, u_input.c.x <= 2147483647i, all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), func_1(vec4<u32>(var_3.x, 0u, var_2.b, var_3.x)).e.xyw, vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec4<i32>(i32(-1i) * -1i, 2147483647i, u_input.b.x, _wgslsmith_div_i32(firstTrailingBit(u_input.c.x), 0i)), true, Struct_1(!any(vec4<bool>(false, false, false, false)), select(vec3<bool>(func_1(vec4<u32>(4294967295u, var_3.x, var_2.d.x, 26039u)).e.x, true, any(vec4<bool>(false, false, true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), !func_1(var_2.d).c, -139f, !vec4<bool>(true, true, true, any(vec2<bool>(true, false)))));
    var var_6 = var_5.a.zz;
    var var_7 = Struct_1(var_6.x, !var_5.d.b, !select(select(select(var_5.d.e.yx, var_5.a.zz, var_5.a.zx), var_5.d.c, select(vec2<bool>(false, var_5.d.c.x), var_5.a.zx, var_5.a.xz)), vec2<bool>(false, select(var_5.d.b.x, true, var_6.x)), !var_5.a.x), -1000f, vec4<bool>(true, any(var_5.a), any(func_1(abs(var_2.d)).e.wwz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.a, -1814f)))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -100f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 116f), var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2489f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - var_5.d.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), 2263f)), abs(vec4<u32>(_wgslsmith_mod_u32(~1u, ~var_3.x), ~(var_3.x | var_0.x), var_2.d.x, _wgslsmith_div_u32(~var_3.x, firstTrailingBit(var_0.x)))), min(min(~(var_2.d << (vec4<u32>(1u, var_0.x, 52299u, var_3.x) % vec4<u32>(32u))), vec4<u32>(var_0.x, var_0.x, 1u, 27154u) >> (var_2.d % vec4<u32>(32u))), vec4<u32>(select(~var_3.x, 0u, false | var_6.x), var_3.x, 17868u, var_3.x)));
}

