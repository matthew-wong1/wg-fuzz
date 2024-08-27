struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = -1000f;
    var var_1 = vec4<bool>(!(!any(!vec4<bool>(false, arg_0.d.a.e.x, arg_1, arg_0.c))), arg_0.d.a.d.x && any(select(vec2<bool>(arg_0.a.d.x, arg_1), vec2<bool>(false, false), arg_1)), true, arg_1);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * arg_0.d.a.b.x));
    var var_3 = !(!vec4<bool>(!arg_1 || true, select(all(var_1.wx), !arg_0.c, all(vec3<bool>(false, true, arg_0.a.d.x))), any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(var_1.x, false, false), arg_1)), true));
    var var_4 = true;
    return 1u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = Struct_2(arg_1);
    let var_1 = Struct_3(Struct_1(countOneBits(-arg_1.a) >> (func_3(Struct_3(arg_1, vec3<i32>(-38394i, arg_2.a, 1i), true, Struct_2(Struct_1(arg_1.a, vec3<f32>(263f, var_0.a.b.x, arg_1.b.x), var_0.a.c, vec3<bool>(true, var_0.a.c, arg_0), arg_1.e))), any(vec4<bool>(arg_1.e.x, var_0.a.e.x, arg_2.e.x, arg_2.c))) % 32u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1961f), _wgslsmith_div_f32(var_0.a.b.x, 252f), _wgslsmith_f_op_f32(step(arg_1.b.x, 154f))), var_0.a.b, !select(var_0.a.d, arg_1.e, vec3<bool>(false, false, false)))), true, select(arg_1.e, vec3<bool>(true, all(var_0.a.d.xy), !var_0.a.e.x), arg_1.e), !select(!arg_2.e, select(arg_2.d, vec3<bool>(arg_1.d.x, false, arg_0), arg_0), all(arg_1.d.xz))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -17009i, arg_1.a), vec3<i32>(var_0.a.a, var_0.a.a, u_input.a), arg_1.d.x), ~vec3<i32>(-1i, var_0.a.a, -1i))), _wgslsmith_sub_i32(-31932i, -u_input.a) & -max(0i, arg_1.a), ~1i >> (arg_3 % 32u)), arg_0, var_0);
    let var_2 = arg_1;
    var var_3 = ~(reverseBits(vec4<u32>(arg_3 >> (14902u % 32u), ~arg_3, 1u, 24286u)) ^ vec4<u32>(arg_3, arg_3, _wgslsmith_sub_u32(21227u, arg_3) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(62581u, arg_3, 4294967295u), vec3<u32>(arg_3, arg_3, 32357u)) % 32u), 39699u));
    var_3 = abs(select(countOneBits(vec4<u32>(~arg_3, max(var_3.x, var_3.x), var_3.x, min(var_3.x, 20581u))), firstTrailingBit(max(vec4<u32>(0u, 166u, var_3.x, var_3.x), vec4<u32>(0u, arg_3, 46242u, 17102u))) | (abs(vec4<u32>(var_3.x, 4294967295u, 0u, arg_3)) ^ ~vec4<u32>(arg_3, var_3.x, 0u, 0u)), !any(!var_1.a.d.yy)));
    return (_wgslsmith_f_op_f32(abs(arg_1.b.x)) >= _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))))) != true;
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(4294967295u, ~1u, 1u, ~_wgslsmith_mult_u32(select(reverseBits(0u), 1u, func_2(false, Struct_1(u_input.a, vec3<f32>(-231f, -325f, 1035f), true, vec3<bool>(false, true, true), vec3<bool>(false, false, false)), Struct_1(u_input.a, vec3<f32>(-1163f, -1285f, -362f), false, vec3<bool>(true, false, false), vec3<bool>(true, true, true)), 1u)), ~1u));
    var_0 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.x, var_0.x, ~var_0.x, ~1u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(72033u, 22217u, 38690u, var_0.x), vec4<u32>(var_0.x, 28112u, 1u, var_0.x)) >> ((vec4<u32>(var_0.x, var_0.x, 57937u, var_0.x) | vec4<u32>(0u, 4294967295u, 0u, 0u)) % vec4<u32>(32u)));
    var var_1 = u_input.a;
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_i32(u_input.a, -1i >> (func_3(Struct_3(Struct_1(u_input.a, vec3<f32>(-531f, 710f, -1609f), true, vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<i32>(-2147483647i, 2147483647i, 67582i), false, Struct_2(Struct_1(35583i, vec3<f32>(-489f, -1804f, -1000f), false, vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), false) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1023f, -337f)) - _wgslsmith_f_op_f32(-559f * -759f)), -924f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(293f))))), false, select(vec3<bool>(any(vec4<bool>(true, true, false, false)), u_input.a > -1i, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), false)), vec3<bool>(true, true, true)), max(-(~(-vec3<i32>(30770i, 45664i, u_input.a))), ~(~vec3<i32>(u_input.a, 19940i, -14220i) << (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.zxx) % vec3<u32>(32u)))), true, Struct_2(Struct_1(_wgslsmith_sub_i32(-59671i, 9308i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(919f, -840f, -104f)), true, !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))));
    let var_3 = _wgslsmith_sub_vec4_i32(~(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-96939i, 0i, -1i, -13706i), vec4<i32>(u_input.a, 1i, 0i, 2147483647i)), vec4<i32>(var_2.d.a.a, -2147483647i, -1i, -1i) << (vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u) % vec4<u32>(32u)), var_2.a.c && false)), -vec4<i32>(-(-2147483647i << (var_0.x % 32u)), -u_input.a, -1i, firstLeadingBit(firstTrailingBit(u_input.a))));
    return var_2.d.a.a;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_4(~firstLeadingBit(_wgslsmith_div_u32(max(1u, arg_0), arg_0)), -_wgslsmith_sub_i32(u_input.a, -2147483647i), Struct_3(Struct_1(15326i, vec3<f32>(_wgslsmith_div_f32(-882f, arg_2.x), arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), func_2(true, Struct_1(arg_1, vec3<f32>(arg_2.x, -1420f, -352f), false, vec3<bool>(false, false, true), vec3<bool>(false, false, true)), Struct_1(arg_1, vec3<f32>(-1123f, -324f, arg_2.x), true, vec3<bool>(true, true, false), vec3<bool>(false, false, false)), arg_0), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), abs(~abs(vec3<i32>(arg_1, u_input.a, arg_1))), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true))), Struct_2(Struct_1(_wgslsmith_clamp_i32(0i, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) - vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), all(vec4<bool>(true, true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + arg_2.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.xyw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 91782u), vec2<u32>(108446u, 106103u))) >> (_wgslsmith_mod_u32(~abs(1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(27708u, 1u, 1u, 1u)), ~vec4<u32>(0u, 0u, 32454u, 2086u))) % 32u), 0u);
    var var_1 = u_input.a;
    var var_2 = vec3<bool>(all(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), vec2<bool>(all(vec3<bool>(true, true, false)), true), true & select(false, false, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-687f))) > _wgslsmith_f_op_f32(-476f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-703f + -169f), _wgslsmith_f_op_f32(-118f - 1232f)))));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, firstLeadingBit(firstLeadingBit(1i)), u_input.a, 1i), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(0i, -2147483647i, u_input.a, u_input.a)), countOneBits(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, 41086i, -2147483647i), vec4<i32>(2177i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i))))));
    let var_4 = vec4<bool>(true, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(5335u, 1u, 1u, var_0), vec4<u32>(0u, 1u, var_0, var_0)), ~vec4<u32>(1u, var_0, var_0, var_0)) >= 134u, true, var_2.x);
    let var_5 = _wgslsmith_sub_i32(-50556i, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_4(var_0, func_1(), vec4<f32>(_wgslsmith_f_op_f32(trunc(1067f)), -1475f, _wgslsmith_f_op_f32(f32(-1f) * -1313f), 1509f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) - _wgslsmith_div_f32(-961f, -1355f))))), vec3<f32>(-2334f, 1010f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-238f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2288f) * _wgslsmith_f_op_f32(f32(-1f) * -1119f)))), abs(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(106277u, var_0, var_0) | vec3<u32>(var_0, 30608u, 98628u), ~vec3<u32>(38388u, var_0, 1u), select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_4.x, true), false)), ~vec3<u32>(1u, var_0, var_0) ^ ~vec3<u32>(20208u, var_0, 4788u), select(min(vec3<u32>(0u, 41611u, 4294967295u), vec3<u32>(var_0, var_0, 6268u)), ~vec3<u32>(var_0, 18784u, var_0), select(var_2.x, true, false)))));
}

