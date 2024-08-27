struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-994f, arg_2.a.a.c.x, false)))) - _wgslsmith_f_op_f32(ceil(arg_0.a.c.x))) * _wgslsmith_f_op_f32(-arg_2.b));
    let var_1 = Struct_2(Struct_1(~vec4<u32>(arg_0.a.a.x, min(4294967295u, u_input.a), u_input.a, 1u), ~abs(u_input.b.x >> (0u % 32u)), arg_2.a.a.c, -_wgslsmith_mod_vec2_i32(-arg_2.a.a.d, u_input.b.yz >> (arg_2.a.b % vec2<u32>(32u)))), vec2<u32>(min(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), _wgslsmith_clamp_vec2_u32(arg_0.a.a.xz, arg_0.a.a.yx, arg_0.a.a.zx))), 0u >> (~arg_0.b.x % 32u)));
    var var_2 = abs(countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.e.x, 1i), 28377i, var_1.a.b, -arg_0.a.d.x))) & (abs(-select(vec4<i32>(-12255i, arg_0.a.d.x, u_input.e.x, 108582i), u_input.b, vec4<bool>(true, false, false, true))) | (u_input.b & vec4<i32>(u_input.e.x, var_1.a.d.x, 0i, -2147483647i >> (arg_0.b.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f - var_1.a.c.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1926f)))) != var_0;
    var_3 = true;
    return 62075u << (~(~arg_2.c.x ^ _wgslsmith_mult_u32(32370u, _wgslsmith_dot_vec4_u32(arg_0.a.a, vec4<u32>(4294967295u, 1u, var_1.a.a.x, u_input.a)))) % 32u);
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = -1i >> (~(func_3(Struct_2(arg_0.a, vec2<u32>(u_input.a, 0u)), -897f, Struct_3(Struct_2(arg_0.a, arg_0.a.a.xy), 1373f, arg_0.a.a)) << (45252u % 32u)) % 32u);
    let var_1 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), true), !vec3<bool>(all(vec2<bool>(false, true)), u_input.a <= 32880u, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), true), false)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), arg_0.a.c.x != 587f);
    var_0 = u_input.d;
    var var_2 = arg_0.a.d;
    var_0 = -firstTrailingBit(u_input.e.x);
    return !(!var_1);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = 0i;
    var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-860f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) + -1362f), -1068f, _wgslsmith_f_op_f32(1f + -831f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1146f), 1571f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-2097f)), _wgslsmith_f_op_f32(floor(-386f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1126f)) * _wgslsmith_f_op_f32(942f * -277f))))));
    var_0 = countOneBits(u_input.d);
    var var_2 = var_1;
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, u_input.a, ~arg_1.x, min(0u, 0u)), vec4<u32>(8710u, u_input.a << (u_input.a % 32u), u_input.a, ~arg_1.x)), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.d, u_input.c), abs(_wgslsmith_add_i32(u_input.c, -5325i))), var_1.zzw, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), select(vec2<i32>(2147483647i, 23022i), _wgslsmith_add_vec2_i32(u_input.b.wx, u_input.b.xy), !arg_2.x), vec2<i32>(-1i) * -u_input.e)), (~(arg_1 ^ arg_1) >> (firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), arg_1)) % vec2<u32>(32u))) ^ abs(~vec2<u32>(37910u, 22307u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_5) -> Struct_3 {
    var var_0 = min(~1u, firstLeadingBit(1u));
    return arg_2.a;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_5 {
    var var_0 = func_5(Struct_3(func_4(!func_2(Struct_4(Struct_1(vec4<u32>(u_input.a, 89397u, u_input.a, arg_1.x), arg_2, vec3<f32>(arg_0, arg_0, arg_0), u_input.e), -34172i, vec2<f32>(arg_0, arg_0))), abs(~arg_1.xy), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true))), 105f, select(vec4<u32>(31207u, u_input.a, 72624u, 90068u), arg_1, true)), 0u << ((firstTrailingBit(57174u) & _wgslsmith_mod_u32(select(15156u, arg_1.x, true), 1u)) % 32u), Struct_5(Struct_3(func_4(vec3<bool>(true, true, false), arg_1.yx, vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -1130f)) - -1248f), arg_1), vec2<bool>(false, any(func_2(Struct_4(Struct_1(arg_1, u_input.c, vec3<f32>(arg_0, arg_0, arg_0), vec2<i32>(1i, -1i)), -38708i, vec2<f32>(arg_0, 906f))))), any(vec2<bool>(true, -341f <= arg_0))));
    let var_1 = Struct_1(~select(vec4<u32>(42063u, _wgslsmith_div_u32(29101u, u_input.a), arg_1.x >> (83443u % 32u), 22733u), _wgslsmith_sub_vec4_u32(~arg_1, abs(vec4<u32>(var_0.a.a.a.x, 1u, 51436u, 4294967295u))), all(vec2<bool>(true, false))), countOneBits(u_input.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.a.c + var_0.a.a.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 305f, var_0.b) - vec3<f32>(arg_0, 843f, 783f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, -1000f, arg_0))))), var_0.a.a.c), _wgslsmith_add_vec2_i32(var_0.a.a.d, var_0.a.a.d));
    var_0 = Struct_3(func_5(Struct_3(func_4(func_2(Struct_4(Struct_1(vec4<u32>(var_0.c.x, var_0.c.x, 0u, 49622u), -23114i, vec3<f32>(var_0.a.a.c.x, 906f, arg_0), vec2<i32>(var_0.a.a.d.x, var_0.a.a.b)), u_input.b.x, vec2<f32>(-615f, -1003f))), vec2<u32>(u_input.a, u_input.a), vec4<bool>(false, false, true, true)), 187f, vec4<u32>(var_0.a.b.x, 25718u, ~0u, ~32780u)), _wgslsmith_sub_u32(~countOneBits(var_0.a.a.a.x), ~func_3(var_0.a, -435f, Struct_3(Struct_2(Struct_1(var_1.a, var_1.d.x, vec3<f32>(1139f, var_0.b, var_1.c.x), vec2<i32>(1i, -2147483647i)), vec2<u32>(4294967295u, 0u)), 1966f, vec4<u32>(u_input.a, 20656u, 1u, var_0.c.x)))), Struct_5(func_5(func_5(Struct_3(var_0.a, var_1.c.x, vec4<u32>(8378u, 0u, arg_1.x, 26424u)), 1u, Struct_5(Struct_3(var_0.a, var_1.c.x, arg_1), vec2<bool>(false, true), true)), var_1.a.x, Struct_5(Struct_3(var_0.a, -355f, vec4<u32>(0u, 11052u, 0u, 1u)), vec2<bool>(true, true), true)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), any(vec4<bool>(false, true, true, true)))).a, -1000f, ~(~(~(vec4<u32>(0u, var_0.a.b.x, 24507u, 0u) ^ var_0.a.a.a))));
    var_0 = Struct_3(Struct_2(func_5(func_5(func_5(Struct_3(var_0.a, -1168f, var_0.a.a.a), var_0.c.x, Struct_5(Struct_3(var_0.a, var_1.c.x, vec4<u32>(u_input.a, 0u, var_0.c.x, u_input.a)), vec2<bool>(false, false), true)), 1u, Struct_5(Struct_3(var_0.a, -768f, vec4<u32>(arg_1.x, 1u, 7505u, var_0.a.a.a.x)), vec2<bool>(false, false), true)), 15005u, Struct_5(Struct_3(Struct_2(var_0.a.a, vec2<u32>(arg_1.x, var_1.a.x)), arg_0, vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)), func_2(Struct_4(Struct_1(vec4<u32>(1u, 1u, var_1.a.x, 115u), u_input.d, vec3<f32>(-519f, 330f, arg_0), var_0.a.a.d), arg_2, vec2<f32>(-883f, arg_0))).zz, select(true, false, false))).a.a, abs(vec2<u32>(0u, arg_1.x) ^ ~vec2<u32>(u_input.a, var_0.a.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - -1043f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.c.x * var_0.a.a.c.x), -1393f))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(2137u, ~var_0.c.x, ~var_0.c.x, ~var_1.a.x), ~vec4<u32>(5653u, 33749u, 5740u, 23867u)), ~(~min(var_1.a, var_0.c))));
    let var_2 = ~select(var_0.a.b.x, u_input.a, any(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true)));
    return Struct_5(Struct_3(func_5(func_5(func_5(Struct_3(Struct_2(var_0.a.a, vec2<u32>(1u, 40680u)), -659f, arg_1), u_input.a, Struct_5(Struct_3(var_0.a, arg_0, arg_1), vec2<bool>(true, false), false)), _wgslsmith_sub_u32(97845u, var_1.a.x), Struct_5(Struct_3(var_0.a, 1392f, arg_1), vec2<bool>(false, true), true)), 1u, Struct_5(func_5(Struct_3(Struct_2(Struct_1(var_1.a, var_0.a.a.b, vec3<f32>(var_1.c.x, 622f, 1639f), var_1.d), arg_1.xz), arg_0, var_1.a), u_input.a, Struct_5(Struct_3(Struct_2(Struct_1(vec4<u32>(arg_1.x, var_1.a.x, var_1.a.x, arg_1.x), u_input.b.x, var_0.a.a.c, var_1.d), var_0.a.a.a.yz), var_0.b, vec4<u32>(var_0.c.x, 3266u, 0u, 0u)), vec2<bool>(true, false), false)), vec2<bool>(false, true), true)).a, var_0.a.a.c.x, abs(var_1.a)), vec2<bool>(20890u != ~var_2, true), (select(any(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), true) && true) || !((arg_2 << (var_0.c.x % 32u)) < u_input.e.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_4 {
    let var_0 = arg_1.a.c.x;
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.a.c.x * 879f) * 100f), ~reverseBits(vec4<u32>(0u, 4294967295u, 7265u, ~1u)), reverseBits(1i)).a;
    let var_2 = func_5(func_5(Struct_3(var_1.a, 1853f, vec4<u32>(4294967295u, 50705u, u_input.a, 1u)), ~u_input.a, arg_1), ~_wgslsmith_mod_u32(4294967295u | var_0, 1u), Struct_5(arg_1.a, arg_1.b, reverseBits(arg_1.a.a.a.b) >= -19760i)).b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.a.c.x * -510f) + arg_1.a.a.a.c.x) - var_1.b));
    var var_3 = vec4<f32>(arg_1.a.a.a.c.x, _wgslsmith_f_op_f32(exp2(func_4(!func_2(Struct_4(Struct_1(vec4<u32>(28407u, u_input.a, 0u, u_input.a), arg_1.a.a.a.d.x, vec3<f32>(745f, 317f, 883f), u_input.b.yw), var_1.a.a.b, var_1.a.a.c.zy)), arg_1.a.a.b, select(vec4<bool>(arg_1.c, false, arg_1.c, true), vec4<bool>(var_2, var_2, true, false), any(vec2<bool>(false, var_2)))).a.c.x)), 1090f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-637f)) + 725f))))));
    var var_4 = Struct_3(Struct_2(func_5(func_1(var_1.a.a.c.x, vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u), -2147483647i).a, max(~u_input.a, max(var_1.a.a.a.x, 28723u)), arg_1).a.a, func_4(vec3<bool>(false, true, arg_1.c && var_2), vec2<u32>(0u, _wgslsmith_mod_u32(1u, arg_1.a.c.x)), !vec4<bool>(true, arg_1.c, false, var_2)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-131f))), var_1.c);
    return Struct_4(var_4.a.a, -(i32(-1i) * -func_1(587f, vec4<u32>(0u, u_input.a, 33966u, var_0), arg_1.a.a.a.b).a.a.a.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.a.c.zz) * _wgslsmith_f_op_vec2_f32(var_3.xy * var_3.zw))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.a.c.yz))))), arg_1.b)));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    let var_0 = arg_0.a.c.x;
    let var_1 = -2147483647i;
    let var_2 = arg_0.a.a.x;
    let var_3 = arg_1;
    var var_4 = vec3<i32>(max(_wgslsmith_dot_vec3_i32(u_input.b.xyw, vec3<i32>(-31383i, 1i, u_input.c)), arg_0.b), abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(-10748i, -1i), -arg_0.a.d)), firstLeadingBit(~(-u_input.d))) & u_input.b.www;
    return 61863u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~1u, 4294967295u);
    let var_1 = true;
    var_0 = func_7(func_6(u_input.b.zx, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1592f + -642f)), _wgslsmith_sub_vec4_u32(~vec4<u32>(24149u, 26787u, 17805u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(19007u, u_input.a, 74418u, u_input.a), vec4<u32>(21769u, 0u, 1u, u_input.a))), -2147483647i | _wgslsmith_sub_i32(-2147483647i, u_input.b.x))), Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f - 144f) - _wgslsmith_f_op_f32(max(-120f, 515f))), abs(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~func_1(-585f, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.d).a.a.a.b).a.a.a, reverseBits(vec2<u32>(func_1(215f, vec4<u32>(u_input.a, u_input.a, u_input.a, 19076u), u_input.d).a.a.b.x, u_input.a))));
    let var_2 = vec3<u32>(25049u, func_7(func_6(vec2<i32>(firstTrailingBit(u_input.c), -2147483647i), func_1(-830f, ~vec4<u32>(0u, u_input.a, 93681u, 1u), i32(-1i) * -25662i)), Struct_2(Struct_1(~vec4<u32>(u_input.a, 5048u, 4294967295u, 1u), u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1544f, 1467f, -783f) - vec3<f32>(682f, -554f, 759f)), select(vec2<i32>(-15303i, -1526i), vec2<i32>(-2147483647i, 51512i), var_1)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 2629u), firstTrailingBit(vec2<u32>(u_input.a, u_input.a))))), _wgslsmith_div_u32(~4294967295u, ~5959u ^ u_input.a));
    let var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(304f, 1800f)) + func_6(vec2<i32>(0i, -83368i), Struct_5(Struct_3(Struct_2(Struct_1(vec4<u32>(45986u, 4294967295u, u_input.a, 1u), -1i, vec3<f32>(-554f, 486f, 2107f), u_input.b.ww), vec2<u32>(u_input.a, 41291u)), 1295f, vec4<u32>(u_input.a, 33164u, u_input.a, u_input.a)), vec2<bool>(false, false), var_1)).a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-733f))))), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), -718f, false)), vec4<u32>(39976u, var_2.x, 1u, ~1u), -func_6(u_input.e, Struct_5(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a, 4294967295u, var_2.x, u_input.a), -22460i, vec3<f32>(-1029f, -515f, 959f), vec2<i32>(u_input.e.x, u_input.d)), var_2.zx), 808f, vec4<u32>(1u, 0u, 6072u, var_2.x)), vec2<bool>(var_1, var_1), true)).a.d.x).a.c >> (~func_5(Struct_3(Struct_2(Struct_1(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.a), 2147483647i, vec3<f32>(-879f, 494f, 1563f), u_input.b.xw), vec2<u32>(9784u, 11978u)), -395f, vec4<u32>(var_2.x, 0u, u_input.a, 15601u)), min(29620u, 1u), func_1(-241f, vec4<u32>(var_2.x, 21170u, 11526u, var_2.x), 1i)).a.a.a % vec4<u32>(32u)), 2147483647i).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(42874i, max(var_3.a.a.b, 57831i), u_input.b.x, min(0i, 3894i)), u_input.b.yy);
}

