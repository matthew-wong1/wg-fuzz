struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    let var_0 = min(-32653i, ~select(~2147483647i, u_input.a.x, arg_3));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c)))) - arg_1.c);
    let var_2 = arg_1.a;
    var var_3 = ~select(var_2.a.x, firstLeadingBit(~0u), any(!arg_0));
    let var_4 = arg_1;
    return vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.a & vec3<u32>(var_4.a.a.x, 1u, var_4.a.a.x), var_4.a.a ^ vec3<u32>(44006u, arg_1.a.a.x, var_4.a.a.x)), _wgslsmith_div_u32(var_2.a.x ^ var_4.a.a.x, var_2.a.x), _wgslsmith_dot_vec2_u32(arg_1.a.a.zx, vec2<u32>(4294967295u, 5842u)) & 16034u) & 22537u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_2.a.yx, var_2.a.yz), arg_1.a.a.x, min(~var_4.b, var_2.a.x), 32586u), reverseBits(select(vec4<u32>(4294967295u, var_4.a.a.x, arg_2.a.x, arg_1.a.a.x) ^ vec4<u32>(arg_1.a.a.x, var_4.b, arg_2.a.x, 80369u), ~vec4<u32>(var_2.a.x, 30210u, arg_1.a.a.x, 0u), select(vec4<bool>(var_2.b, arg_1.a.b, false, true), vec4<bool>(false, arg_1.a.b, false, true), vec4<bool>(true, arg_3, true, false))))), 1u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = u_input.a.x;
    var var_1 = !(!(!vec3<bool>(all(vec3<bool>(true, false, false)), all(vec3<bool>(false, arg_1, arg_1)), any(vec4<bool>(arg_1, arg_2, arg_2, false)))));
    var var_2 = firstLeadingBit(-vec4<i32>(u_input.a.x >> (1u % 32u), -(~u_input.a.x), -(var_0 & u_input.a.x), var_0));
    var var_3 = Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(func_3(vec3<bool>(true, var_1.x, true), Struct_2(Struct_1(vec3<u32>(32539u, 41601u, 23694u), var_1.x), 22685u, arg_0), Struct_1(vec3<u32>(16263u, 64426u, 39803u), arg_2), true), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(67138u, 1u, 0u)), vec3<u32>(1u, 1u, 1u))), arg_2), !all(var_1.xy), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(54509u, 4294967295u), 1u, 121394u), countOneBits(~vec3<u32>(117092u, 20064u, 1u)), vec3<u32>(abs(0u), min(0u, 1u), select(4294967295u, 16087u, var_1.x))), arg_2), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, -669f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(124f, 643f))) - vec2<f32>(667f, 206f))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + 1381f), _wgslsmith_f_op_f32(-arg_0), true))), vec2<bool>(true, any(select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(true, false, true, arg_1), arg_2))))), vec2<bool>(false, !(!var_1.x)));
    var_3 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, ~46483u), ~1u, var_3.c.a.x), arg_2), true, Struct_1(~firstTrailingBit(vec3<u32>(var_3.a.a.x, 0u, 4294967295u)), true), var_3.d, !select(var_1.xx, select(vec2<bool>(arg_2, false), var_1.zx, vec2<bool>(true, true)), arg_2));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~(75488u ^ ~var_3.a.a.x), (var_3.c.a.x << (reverseBits(var_3.a.a.x) % 32u)) >> (~(~6837u) % 32u), ~(~func_3(vec3<bool>(arg_1, false, true), Struct_2(var_3.a, var_3.a.a.x, arg_0), var_3.a, false).x), ~1u), vec4<u32>(0u, 44649u, 57874u, var_3.a.a.x), vec4<u32>(~var_3.c.a.x, _wgslsmith_dot_vec2_u32(~var_3.a.a.zx, var_3.a.a.zz) & 11701u, 4294967295u, ~4294967295u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = select(!(!arg_2), !select(arg_2, !select(arg_2, vec3<bool>(true, true, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), select(vec3<bool>(false, arg_2.x, arg_2.x), !arg_2, arg_0.x == arg_0.x)), arg_2);
    let var_1 = var_0.yz;
    var var_2 = false;
    let var_3 = vec2<u32>(~(1u << ((4294967295u << ((arg_0.x << (arg_0.x % 32u)) % 32u)) % 32u)), arg_0.x);
    var var_4 = false;
    return Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~arg_0.x, abs(17842u), func_3(arg_2, Struct_2(Struct_1(vec3<u32>(var_3.x, var_3.x, 78179u), false), arg_0.x, arg_3), Struct_1(arg_0.yyy, false), true).x), arg_0.yww), min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.x, 35210u, 1u), _wgslsmith_add_vec3_u32(arg_0.xyz, arg_0.xxw), abs(vec3<u32>(1u, var_3.x, 1u))), arg_0.wyy)), true);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(arg_0.a, true, arg_0.a, arg_1.yy, vec2<bool>(arg_0.c.a.x < ~0u, arg_2));
    let var_1 = 8092i;
    return var_0.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_5(Struct_3(func_4(func_2(-1000f, arg_0 | true, !arg_0), -vec4<i32>(u_input.a.x, -28996i, -1i, 28447i), select(vec3<bool>(true, arg_0, false), vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, false, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -769f)), func_4(~vec4<u32>(0u, 5916u, 97509u, 4120u), vec4<i32>(_wgslsmith_clamp_i32(1i, -16321i, u_input.a.x), reverseBits(-2147483647i), firstLeadingBit(-30855i), abs(u_input.a.x)), vec3<bool>(true, true, true), 150f).b, func_4(~vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), !select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0)), -385f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(829f, -1243f) * vec2<f32>(574f, -2280f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-771f, 620f) - vec2<f32>(911f, 258f)))), vec2<f32>(-949f, _wgslsmith_f_op_f32(698f - -170f))), select(!(!vec2<bool>(arg_0, arg_0)), vec2<bool>(true, false), vec2<bool>(!arg_0, u_input.a.x == u_input.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(427f)) - _wgslsmith_div_f32(-1042f, -1697f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) * _wgslsmith_f_op_f32(f32(-1f) * -380f)), -1383f)), arg_0);
    var var_1 = true;
    var_1 = true;
    var_1 = var_0.b;
    var var_2 = -u_input.a.x;
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = arg_0.c.a.x;
    var_1 = 0u;
    return Struct_2(func_5(Struct_3(func_5(Struct_3(Struct_1(arg_1.a.a, var_0.a.b), arg_1.a.b, var_0.c, arg_0.d, vec2<bool>(arg_0.a.b, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-499f, var_0.d.x, -204f, arg_1.c))), func_4(vec4<u32>(0u, 0u, arg_0.c.a.x, var_0.a.a.x), vec4<i32>(u_input.a.x, 2147483647i, 20541i, u_input.a.x), vec3<bool>(false, true, true), var_0.d.x).b), false, var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.d))), !select(vec2<bool>(var_0.e.x, false), arg_0.e, arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 603f, 1019f, var_0.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -519f, arg_1.c, var_0.d.x))) - vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -373f))), false), ~(~arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x))));
}

fn func_7(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = -694f;
    var var_1 = -13344i;
    var var_2 = 2572u;
    var_2 = _wgslsmith_mod_u32(arg_1.a.a.x, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)), true, func_4(abs(vec4<u32>(arg_1.b, 76761u, arg_1.b, 4294967295u)), ~vec4<i32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x), select(vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b), vec3<bool>(arg_1.a.b, false, false), vec3<bool>(arg_1.a.b, arg_1.a.b, true)), 188f).b).x) | 7684u;
    var_1 = u_input.a.x;
    return StorageBuffer(arg_1.a.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 56137u;
    var_0 = 0u;
    var_0 = ~_wgslsmith_add_u32(abs(~14439u), 1u);
    let x = u_input.a;
    s_output = func_7(-u_input.a.x, func_6(Struct_3(func_1(select(true, false, false)), true, Struct_1(firstLeadingBit(vec3<u32>(0u, 55321u, 1u)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, 536f))), vec2<bool>(all(vec3<bool>(false, false, true)), true)), Struct_2(func_1(true), ~(~13808u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(307f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

