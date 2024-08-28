struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1051f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)) * _wgslsmith_f_op_f32(abs(-165f))), true && all(select(arg_3.d.zwy, arg_3.d.yxx, false)))) + arg_0);
    var var_1 = Struct_3(~1u, arg_3.b, -986f, arg_3.d);
    var var_2 = Struct_1(~4294967295u, (any(select(arg_3.d.yyy, var_1.d.zyx, true)) || true) | !(any(vec4<bool>(arg_3.d.x, true, arg_3.d.x, arg_3.d.x)) != !arg_3.d.x), arg_0, ~39162u << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.b.x, arg_1, var_1.a), arg_3.b) % 32u), vec3<u32>(44620u, ~0u, var_1.b.x));
    var var_3 = arg_3;
    var_3 = arg_3;
    return arg_3.c;
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_u32(firstTrailingBit(~(~vec3<u32>(1u, 1u, 0u))) ^ ~vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(~(~54342u), 86788u, ~(~1u))));
    var_0 = reverseBits(vec3<u32>(max(var_0.x, ~9146u >> (1u % 32u)), 10468u, 3212u));
    var_0 = firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), _wgslsmith_div_u32(var_0.x, var_0.x)), max(47276u, firstLeadingBit(1u)), ~9926u)) >> (_wgslsmith_sub_vec3_u32(abs(~firstLeadingBit(vec3<u32>(42293u, 4294967295u, var_0.x))), firstTrailingBit(abs(vec3<u32>(0u, var_0.x, var_0.x))) | _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(var_0.x, var_0.x, var_0.x))) % vec3<u32>(32u));
    let var_1 = vec2<i32>(abs(-1i), 2147483647i);
    var_0 = select(countOneBits(firstLeadingBit(vec3<u32>(var_0.x, 4294967295u, 46161u))) << (min(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)), ~vec3<u32>(0u, 34381u, var_0.x)) % vec3<u32>(32u)), vec3<u32>(4294967295u, ~_wgslsmith_add_u32(var_0.x, 0u), firstTrailingBit(~85664u)), any(vec3<bool>(true, false, false)) & false) >> (vec3<u32>(reverseBits(~(~var_0.x)), min(max(_wgslsmith_mult_u32(57172u, var_0.x), var_0.x), _wgslsmith_mod_u32(30820u, var_0.x) | min(var_0.x, var_0.x)), var_0.x) % vec3<u32>(32u));
    return 39677u;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = vec4<f32>(-525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(380f)), 0u, reverseBits(1i), Struct_3(~arg_0.a.e.x, vec3<u32>(2142u, arg_0.d.a, arg_0.a.d), _wgslsmith_f_op_f32(-arg_0.b.c), vec4<bool>(true, arg_0.d.b, false, arg_0.a.b)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1670f, -571f)))))), _wgslsmith_f_op_f32(-arg_0.d.c), arg_0.b.c);
    let var_1 = Struct_2(Struct_1((~arg_0.b.d << (_wgslsmith_add_u32(3953u, 0u) % 32u)) | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(21569u, 47713u), reverseBits(arg_0.a.a), reverseBits(arg_0.b.d)), !(true != (arg_1 & arg_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(246f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f))), _wgslsmith_sub_u32(~arg_0.a.e.x, _wgslsmith_div_u32(9747u, arg_0.b.d & arg_0.b.a)), min(arg_0.a.e, reverseBits(min(vec3<u32>(1u, 14750u, arg_0.d.a), arg_0.b.e)))), arg_0.a, arg_0.c, Struct_1(func_3(vec2<i32>(~u_input.b.x, _wgslsmith_clamp_i32(-6819i, arg_0.e.x, arg_0.e.x))), abs(1u) <= (abs(arg_0.d.d) ^ ~0u), 672f, 4294967295u, vec3<u32>(arg_0.b.a, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.b.e, arg_0.a.e, vec3<u32>(48613u, arg_0.a.d, arg_0.a.d)), select(arg_0.d.e, arg_0.a.e, arg_0.c)), max(arg_0.a.e.x, ~arg_0.b.d))), abs(_wgslsmith_add_vec3_i32(min(-arg_0.e, vec3<i32>(arg_0.e.x, -44182i, arg_0.e.x) | u_input.b), ~vec3<i32>(u_input.a.x, -6288i, -1i))));
    let var_2 = 0u;
    return select(0u, 67635u, any(vec3<bool>(var_1.c.x, true, !any(vec4<bool>(false, var_1.b.b, arg_0.c.x, arg_0.c.x)))));
}

fn func_4(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(0u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 0u, arg_0, 1u), ~vec4<u32>(arg_0, 25388u, 1u, 1u))), ~arg_0), ~((vec3<u32>(arg_0, arg_0, arg_0) & select(vec3<u32>(arg_0, 0u, 63174u), vec3<u32>(arg_0, arg_0, 64976u), vec3<bool>(false, false, true))) & firstLeadingBit(vec3<u32>(arg_0, 1u, 51667u))));
    var var_1 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_f32(1256f - _wgslsmith_f_op_f32(f32(-1f) * -1225f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1494f)) - _wgslsmith_f_op_f32(f32(-1f) * -561f)), -1186f, ~45199u, select(var_0, vec3<u32>(var_0.x, 37852u, _wgslsmith_mult_u32(var_0.x, 91371u)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), true))), Struct_1(func_3(vec2<i32>(8806i, ~(-30231i))), true, -643f, 81295u, vec3<u32>(_wgslsmith_add_u32(var_0.x, 30190u) & ~arg_0, ~(28164u & arg_0), 1u)), vec3<bool>(~_wgslsmith_add_u32(arg_0, var_0.x) != ~arg_0, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), u_input.b.x >= -13594i), Struct_1(min(_wgslsmith_sub_u32(0u, arg_0) >> (_wgslsmith_add_u32(var_0.x, 1u) % 32u), ~var_0.x), any(vec2<bool>(true, u_input.c.x != -23873i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(156f + -716f))) * _wgslsmith_f_op_f32(-1180f + _wgslsmith_f_op_f32(floor(-1219f)))), 5695u, vec3<u32>(~(~82271u), ~var_0.x, ~1u | ~var_0.x)), u_input.a & (~min(vec3<i32>(u_input.b.x, 2147483647i, u_input.c.x), vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x)) << (vec3<u32>(_wgslsmith_mod_u32(87357u, 4294967295u), var_0.x, arg_0) % vec3<u32>(32u))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_u32(arg_0, 0u), var_1.e.x == firstLeadingBit(u_input.b.x & var_1.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-458f)))), abs(var_1.b.e.x), abs(var_0) | var_1.b.e), var_1.b, vec3<bool>(var_1.c.x | false, all(select(vec4<bool>(true, false, var_1.a.b, false), !vec4<bool>(var_1.a.b, true, false, false), !vec4<bool>(false, false, var_1.c.x, var_1.d.b))), _wgslsmith_f_op_f32(select(-486f, 792f, var_0.x != 1u)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-196f - var_1.b.c)))), Struct_1(var_0.x, false, var_1.b.c, 19330u, var_1.b.e), ~vec3<i32>(-(var_1.e.x >> (var_0.x % 32u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.yy), vec2<i32>(var_1.e.x, var_1.e.x)), -6884i));
    let var_3 = vec4<i32>(_wgslsmith_clamp_i32(var_1.e.x, abs(50982i), 34855i), -(reverseBits(var_1.e.x) & -u_input.b.x) >> (1u % 32u), _wgslsmith_clamp_i32(select(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(var_1.e.zx, -vec2<i32>(u_input.c.x, u_input.c.x)), var_2.d.b), var_1.e.x, _wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(0i, var_1.e.x)), var_1.e.x >> (var_2.b.d % 32u), var_2.a.d < 58944u), var_1.e.x)), reverseBits(-28002i));
    var var_4 = false;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1328f, _wgslsmith_f_op_f32(-564f - -945f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_2(Struct_1(4294967295u, false, -344f, 48485u, vec3<u32>(4294967295u, 4294967295u, 21078u)), Struct_1(54422u, false, 791f, 1u, vec3<u32>(1u, 4294967295u, 35206u)), vec3<bool>(false, false, true), Struct_1(57398u, false, -293f, 0u, vec3<u32>(53047u, 1840u, 41737u)), u_input.a), false))))))));
    let var_1 = 0u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(~0u, 4294967295u), 89193u), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), var_0, var_1 ^ (var_1 | 1u), _wgslsmith_mult_vec3_u32(select(select(vec3<u32>(4294967295u, 50674u, 1u), vec3<u32>(var_1, 34618u, 1u), false), _wgslsmith_mod_vec3_u32(vec3<u32>(52508u, var_1, var_1), vec3<u32>(var_1, var_1, 1u)), any(vec2<bool>(false, true))), ~min(vec3<u32>(50625u, var_1, 21723u), vec3<u32>(70720u, var_1, 0u)))), Struct_1(func_3(u_input.c.xx), !(!any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(124f + var_0), _wgslsmith_add_u32(~var_1, firstLeadingBit(25811u)), 0i, Struct_3(var_1, vec3<u32>(0u, 0u, 4294967295u), _wgslsmith_f_op_f32(var_0 + var_0), vec4<bool>(true, false, true, true)))), ~(~(4294967295u << (0u % 32u))), ~vec3<u32>(4294967295u, _wgslsmith_add_u32(73114u, var_1), var_1)), vec3<bool>(true, 13235i < ~(-u_input.c.x), false), Struct_1(~func_1(Struct_2(Struct_1(4294967295u, true, var_0, 96020u, vec3<u32>(var_1, 56270u, var_1)), Struct_1(0u, true, 338f, var_1, vec3<u32>(24880u, var_1, 17137u)), vec3<bool>(true, true, true), Struct_1(0u, true, 941f, 0u, vec3<u32>(44847u, 1u, 6821u)), u_input.b), any(vec2<bool>(true, false))), true, -254f, ~(~min(4294967295u, 49251u)), min(abs(vec3<u32>(1654u, var_1, var_1)), _wgslsmith_mod_vec3_u32(vec3<u32>(28722u, 115996u, 75295u), vec3<u32>(73821u, 21773u, var_1)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 61278u, var_1), vec3<u32>(var_1, var_1, var_1)))), vec3<i32>(~u_input.b.x, u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(-1i, u_input.a.x)), 26031i)));
    var var_3 = var_2.e.x;
    let var_4 = -vec2<i32>(39887i, min(~(-20111i), i32(-1i) * -u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a << (firstTrailingBit(~var_2.d.e.x) % 32u), 4294967295u, _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.e.x, 39524u, 96455u, 4294967295u), vec4<u32>(var_2.a.a, var_2.d.a, 1u, 1u)), ~vec4<u32>(0u, var_1, var_1, 21954u)), ~_wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, 0u, 1u, var_1), vec4<u32>(0u, var_1, var_2.d.e.x, var_1)), vec4<u32>(1u, var_2.b.a, 0u, 1u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.b.a, var_1), _wgslsmith_sub_u32(var_2.b.a, 0u)));
}

