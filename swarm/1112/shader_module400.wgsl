struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(29618u, u_input.e), vec2<u32>(arg_0.b, arg_2.b)), 4294967295u), ~vec2<u32>(_wgslsmith_div_u32(4830u | arg_2.a, arg_2.a), 1u));
    let var_1 = -_wgslsmith_sub_vec2_i32(u_input.c.zz, -select(u_input.c.yz, u_input.c.xz & vec2<i32>(-2147483647i, -15630i), true));
    var var_2 = arg_1;
    let var_3 = vec2<i32>(-54111i, u_input.b.x);
    var var_4 = Struct_1(arg_0.a, _wgslsmith_add_u32(arg_1.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22205u, arg_1.b, 4294967295u), vec4<u32>(3974u, 4294967295u, arg_1.b, arg_2.b)) & var_2.b), var_2.c);
    return arg_2;
}

fn func_3() -> f32 {
    let var_0 = Struct_1(abs(~(~(~3654u))), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(func_2(Struct_1(0u, 0u, 1214f), Struct_1(u_input.d.x, u_input.e, -1000f), Struct_1(u_input.d.x, u_input.e, -184f), true), func_2(Struct_1(u_input.d.x, u_input.e, 929f), Struct_1(50454u, 30958u, 1266f), Struct_1(30252u, 4294967295u, 1450f), false), func_2(Struct_1(u_input.d.x, 4294967295u, -2318f), Struct_1(4294967295u, 1u, 853f), Struct_1(31188u, 86924u, 1000f), false), true).c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(400f))))));
    var var_1 = ~vec2<u32>(80077u, max(0u, 101949u) | _wgslsmith_mult_u32(54726u, var_0.b)) | u_input.d.xy;
    var var_2 = ~u_input.d.zx;
    var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.zz, reverseBits(min(vec2<u32>(50838u, 47107u), vec2<u32>(var_1.x, 31236u))), _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.e, 34292u), vec2<u32>(0u, var_2.x)), ~u_input.d.zx)) & vec2<u32>(4294967295u, reverseBits(var_0.a | var_0.a)), firstTrailingBit(firstTrailingBit(u_input.d.xz)), reverseBits(~vec2<u32>(~10363u, 1u)));
    let var_3 = ~max(abs(vec2<u32>(_wgslsmith_add_u32(18694u, 42884u), 1u)), vec2<u32>(~1u, var_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - -795f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: bool) -> vec4<f32> {
    let var_0 = firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, arg_1.x, 2147483647i, 0i), -vec4<i32>(arg_1.x, -39991i, u_input.c.x, arg_1.x)), -23761i), -8488i));
    let var_1 = func_2(arg_0, arg_0, Struct_1(_wgslsmith_sub_u32((arg_0.b ^ 76685u) >> (u_input.e % 32u), arg_0.a), max(arg_0.b << (u_input.d.x % 32u), ~29256u), _wgslsmith_div_f32(arg_0.c, -687f)), any(vec4<bool>(arg_3, arg_3, true, true)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(1895f * arg_0.c), 471f, -1411f);
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<f32>(_wgslsmith_f_op_f32(-var_1.c), 1288f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-848f + 614f)), arg_0.c))));
    var var_3 = arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2.x))))))), 1169f, var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_3.c, var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-658f - -932f)) * _wgslsmith_f_op_f32(f32(-1f) * -1288f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.d.x, u_input.e, 1014f), u_input.c.yx, vec3<f32>(-313f, 1000f, 1049f), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1511f, 376f, -1263f, -454f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2122f, 299f, -1294f, 1226f))))))));
    var var_1 = u_input.d.xz;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_1.x, 62630u, 156f), u_input.b, var_0.yzw, true)).x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_f_op_f32(var_0.x - 623f)), var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    var var_3 = func_2(func_2(func_2(Struct_1(~var_1.x, ~24215u, _wgslsmith_f_op_f32(f32(-1f) * -736f)), func_2(Struct_1(32246u, var_1.x, var_0.x), Struct_1(1u, 0u, var_0.x), Struct_1(var_1.x, u_input.e, 1000f), false), func_2(Struct_1(var_1.x, 1u, var_0.x), func_2(Struct_1(var_1.x, 56933u, 413f), Struct_1(4294967295u, u_input.d.x, -682f), Struct_1(4294967295u, var_1.x, 1349f), false), func_2(Struct_1(80435u, 22962u, var_2.x), Struct_1(13534u, 47819u, var_2.x), Struct_1(1u, 1u, -2195f), false), true), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), func_2(Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.d.x), 21552u, _wgslsmith_f_op_f32(1000f - var_0.x)), Struct_1(_wgslsmith_mult_u32(39468u, u_input.d.x), var_1.x, var_0.x), Struct_1(select(var_1.x, 60234u, false), ~0u, -285f), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(func_2(Struct_1(u_input.e, 7868u, var_2.x), Struct_1(u_input.e, 4294967295u, -1724f), Struct_1(41003u, 1u, var_0.x), false).a, _wgslsmith_mod_u32(~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5029u, var_1.x, 57884u), vec4<u32>(u_input.d.x, var_1.x, u_input.e, var_1.x))), -236f), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false)))), func_2(Struct_1(u_input.d.x, u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -462f)), func_2(Struct_1(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, 17234u, 85132u), vec4<u32>(4702u, 0u, 4294967295u, u_input.d.x)), _wgslsmith_f_op_f32(-1000f - 186f)), func_2(Struct_1(var_1.x, var_1.x, 623f), func_2(Struct_1(u_input.e, u_input.d.x, var_2.x), Struct_1(var_1.x, u_input.e, var_2.x), Struct_1(14598u, var_1.x, 448f), false), Struct_1(var_1.x, u_input.d.x, var_2.x), true), Struct_1(u_input.e | u_input.d.x, 5099u, _wgslsmith_f_op_f32(1000f + var_2.x)), !all(vec2<bool>(false, false))), func_2(Struct_1(abs(4294967295u), 19924u, _wgslsmith_f_op_f32(var_0.x - var_0.x)), func_2(Struct_1(40423u, var_1.x, 1190f), Struct_1(u_input.d.x, 2037u, -256f), func_2(Struct_1(u_input.d.x, u_input.d.x, 551f), Struct_1(var_1.x, u_input.d.x, var_0.x), Struct_1(var_1.x, u_input.d.x, var_0.x), false), false), Struct_1(~var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 49601u), vec2<u32>(u_input.e, 5362u)), _wgslsmith_f_op_f32(f32(-1f) * -1110f)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !(var_0.x >= _wgslsmith_f_op_f32(-var_2.x))), func_2(func_2(func_2(func_2(Struct_1(var_1.x, 4294967295u, -557f), Struct_1(u_input.e, 1u, var_2.x), Struct_1(48855u, u_input.e, 1274f), false), func_2(Struct_1(14290u, 4294967295u, 1773f), Struct_1(1u, 52893u, var_0.x), Struct_1(var_1.x, u_input.e, var_0.x), true), func_2(Struct_1(var_1.x, u_input.d.x, var_0.x), Struct_1(u_input.d.x, u_input.e, -787f), Struct_1(45544u, u_input.e, var_0.x), false), true), Struct_1(~43705u, 0u | var_1.x, _wgslsmith_f_op_f32(var_0.x + var_2.x)), func_2(func_2(Struct_1(var_1.x, var_1.x, -1000f), Struct_1(var_1.x, u_input.d.x, var_2.x), Struct_1(var_1.x, u_input.d.x, -654f), false), Struct_1(var_1.x, var_1.x, 209f), func_2(Struct_1(u_input.d.x, var_1.x, var_2.x), Struct_1(0u, 0u, var_0.x), Struct_1(97426u, 1u, 1000f), false), true), true), func_2(func_2(Struct_1(4294967295u, 42581u, var_2.x), Struct_1(var_1.x, u_input.e, var_0.x), Struct_1(var_1.x, 0u, -1119f), all(vec2<bool>(false, false))), func_2(func_2(Struct_1(u_input.d.x, 20592u, var_0.x), Struct_1(var_1.x, var_1.x, -575f), Struct_1(u_input.e, 26020u, var_0.x), true), Struct_1(u_input.d.x, 4294967295u, -1115f), func_2(Struct_1(var_1.x, 1u, 1016f), Struct_1(101564u, var_1.x, 1149f), Struct_1(1u, u_input.e, -1448f), true), all(vec4<bool>(true, false, true, true))), Struct_1(select(u_input.d.x, 3385u, false), u_input.e << (28040u % 32u), var_0.x), true), func_2(func_2(Struct_1(55232u, u_input.d.x, var_2.x), Struct_1(0u, 50230u, 133f), func_2(Struct_1(1u, var_1.x, var_2.x), Struct_1(var_1.x, 4294967295u, var_2.x), Struct_1(var_1.x, 1u, 837f), false), any(vec2<bool>(true, true))), Struct_1(1u << (var_1.x % 32u), 1u, _wgslsmith_div_f32(var_2.x, var_0.x)), func_2(func_2(Struct_1(0u, var_1.x, 2140f), Struct_1(47415u, 16404u, var_0.x), Struct_1(u_input.e, var_1.x, -863f), true), func_2(Struct_1(u_input.d.x, 35438u, -1165f), Struct_1(var_1.x, 57530u, -107f), Struct_1(4294967295u, var_1.x, var_2.x), false), func_2(Struct_1(4294967295u, u_input.d.x, 715f), Struct_1(var_1.x, var_1.x, 761f), Struct_1(var_1.x, var_1.x, -1158f), true), true), false), !any(vec3<bool>(true, true, true))), true);
    let var_4 = Struct_1(((reverseBits(var_1.x) | 1u) | reverseBits(1u)) & ~(~(~u_input.e)), var_1.x, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.x)), var_2.x)), _wgslsmith_f_op_f32(-var_0.x))));
    var var_5 = Struct_1(u_input.d.x, ~(~(~_wgslsmith_mult_u32(u_input.e, u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(func_2(var_4, var_4, var_4, false), Struct_1(var_3.a, 4294967295u, -3385f), func_2(var_4, Struct_1(1u, var_1.x, 1105f), Struct_1(var_3.b, var_4.b, -451f), true), var_2.x > -340f).c)));
    var var_6 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1715f * var_4.c) - _wgslsmith_f_op_f32(f32(-1f) * -1196f)) * var_5.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.c, var_3.c)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.zzw, _wgslsmith_f_op_vec3_f32(vec3<f32>(369f, -593f, 479f) - vec3<f32>(-773f, var_3.c, var_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1143f, var_4.c)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.c, var_3.c, -944f), var_2.zxx))), var_0.yyx)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, u_input.a, -577f, abs(u_input.b));
}

