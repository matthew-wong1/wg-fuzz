struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> vec4<u32> {
    var var_0 = ~((firstTrailingBit(~0u) >> ((u_input.a << (_wgslsmith_mod_u32(u_input.a, 111372u) % 32u)) % 32u)) >> (4294967295u % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1501f - _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-480f * arg_2))) - _wgslsmith_f_op_f32(sign(331f))), select(vec4<u32>(1u, ~10944u, _wgslsmith_mod_u32(u_input.a, 1u), ~4294967295u) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 33403u, 1u, u_input.a), max(vec4<u32>(20496u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 0u))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 1u, u_input.a), vec4<u32>(1u, 0u, 6613u, 1u))), !(!vec4<bool>(arg_1, false, true, arg_1))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(909f, -1240f) - vec2<f32>(arg_2, 760f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(-1073f, arg_2))))), u_input.c.x >> (u_input.a % 32u)), vec2<f32>(427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))))));
    let var_2 = !select(vec2<bool>(true, arg_1), select(vec2<bool>(true, true), !(!vec2<bool>(arg_1, arg_1)), vec2<bool>(true & arg_1, all(vec3<bool>(false, true, false)))), false && all(!vec3<bool>(arg_1, false, false)));
    let var_3 = min(abs(_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(var_1.b.wy, var_1.b.wy)), select(vec2<u32>(var_1.b.x, var_1.b.x), var_1.b.wz, any(vec3<bool>(false, false, false))))), _wgslsmith_div_vec2_u32(abs(var_1.b.ww), min(var_1.b.wy, var_1.b.xw)));
    let var_4 = Struct_1(var_1.d, ~44018i);
    return var_1.b;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-188f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f - -759f)))), abs(~(~vec4<u32>(0u, 0u, 20407u, u_input.a))) ^ func_3(u_input.b.x >> (0u % 32u), true, 750f), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1431f, 296f) - vec2<f32>(915f, 636f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-884f, 121f) + vec2<f32>(-488f, 477f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, 1214f)), vec2<f32>(-383f, -409f)))), i32(-1i) * -u_input.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-2027f + -527f), _wgslsmith_f_op_f32(-127f + 1000f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 298f) * vec2<f32>(895f, -1432f))))))));
    let var_1 = countOneBits(var_0.b.wx);
    var var_2 = ~countOneBits(0u);
    var_0 = Struct_2(var_0.d.x, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.c.a.x) - var_0.c.a) - vec2<f32>(608f, 304f))), 2147483647i << (select(~var_1.x, ~0u, all(vec3<bool>(true, true, false))) % 32u)), var_0.c.a);
    var_2 = u_input.a << (~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 1u)), 96712u), var_1.x) % 32u);
    return select(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(37278u, 4294967295u, var_0.b.x)), var_0.b.ywy), vec3<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), min(var_1.x, 4294967295u), 3967u)), var_0.b.zyw), var_0.b.wxz, true);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~max(vec3<u32>(46177u, arg_0, 37928u), vec3<u32>(var_0, 4294967295u, 57554u)) ^ vec3<u32>(arg_0, ~var_0, 38630u), _wgslsmith_div_vec3_u32((vec3<u32>(91210u, arg_0, 8206u) ^ vec3<u32>(u_input.a, u_input.a, 1u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0, 7430u), vec3<u32>(0u, 16860u, var_0)) % vec3<u32>(32u)), func_2())), ~min(select(arg_0, 4294967295u, false), _wgslsmith_sub_u32(var_0, 4294967295u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1343f), -383f))), _wgslsmith_mult_i32(u_input.d.x, i32(-1i) * -65290i));
    var var_3 = vec4<i32>(max(-7620i << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, arg_0), vec3<u32>(27226u, 97497u, var_0)) % 32u), ~(~min(2147483647i, -21795i))), -1i, ~var_2.b, abs(firstLeadingBit(-u_input.d.x >> (max(var_0, u_input.a) % 32u))));
    let var_4 = true;
    return Struct_2(_wgslsmith_div_f32(var_2.a.x, -489f), ~_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(var_1), 1u, 1u >> (var_0 % 32u), var_1), ~max(vec4<u32>(var_0, var_1, 31096u, arg_0), vec4<u32>(4294967295u, var_0, 0u, 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(sign(var_2.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a * vec2<f32>(109f, -601f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x) + vec2<f32>(var_2.a.x, 776f))))), -6998i), _wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1177f - var_2.a.x), _wgslsmith_f_op_f32(abs(-211f)), any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -2310f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(arg_1.a, ~_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, u_input.d.x, 32074i, arg_0.c.b)), select(select(vec4<i32>(1i, 1i, 0i, -24940i), vec4<i32>(3017i, 2147483647i, 0i, arg_0.c.b), vec4<bool>(false, true, true, true)), -vec4<i32>(arg_0.c.b, -21609i, u_input.d.x, -2350i), vec4<bool>(true, false, true, true))));
    let var_1 = ~arg_0.b;
    let var_2 = func_1(~(u_input.a ^ ~1u), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(true, all(vec2<bool>(true, true)), false)))).c;
    var var_3 = false;
    let var_4 = ~reverseBits((_wgslsmith_mod_i32(1i, 25490i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(762u, arg_0.b.x, 28735u, u_input.a), vec4<u32>(1u, 4913u, 27819u, 1252u)) % 32u)) << (~7460u % 32u));
    return func_1(u_input.a, !all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, arg_1.a, arg_2.a, 1063f) - vec4<f32>(arg_2.c.a.x, 1228f, arg_2.d.x, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(483f, arg_1.a, arg_1.d.x, arg_1.d.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, 991f, arg_2.a))), vec4<f32>(arg_2.c.a.x, 1663f, arg_2.c.a.x, 1226f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_2.c.a.x, -1128f, arg_1.c.a.x)), false))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_2.c.a.x, arg_2.c.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-445f - arg_2.a)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, arg_2.c.a.x, arg_2.d.x, arg_2.c.a.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, -490f, 497f, 110f)))))), arg_3)));
    var_0 = vec4<f32>(-1024f, _wgslsmith_f_op_f32(sign(104f)), 627f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f * arg_1.d.x)), _wgslsmith_f_op_f32(-var_0.x), arg_3)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.d.x | -1i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-386f)) * _wgslsmith_f_op_f32(func_5(2147483647i, func_4(func_1(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), true), func_1(func_3(u_input.c.x, false, -205f).x, true).c, func_1(reverseBits(u_input.a), u_input.a != 4294967295u).c), func_1(1u, true), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(func_1(func_2().x, true).c.b, 1i, u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.d ^ vec2<i32>(_wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), _wgslsmith_add_vec2_i32(~u_input.b, vec2<i32>(~u_input.d.x, select(u_input.b.x, u_input.b.x, true)))));
    var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(~(-u_input.b.x), func_4(Struct_2(var_1, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), Struct_1(vec2<f32>(-981f, var_1), 24644i), vec2<f32>(-1047f, 1323f)), func_4(Struct_2(var_1, vec4<u32>(u_input.a, 79477u, u_input.a, u_input.a), Struct_1(vec2<f32>(var_1, var_1), 0i), vec2<f32>(var_1, var_1)), Struct_1(vec2<f32>(-1000f, var_1), 0i), Struct_1(vec2<f32>(var_1, 2010f), -23252i)).c, Struct_1(vec2<f32>(1000f, -507f), 29571i)).c.b, var_2), abs(u_input.c));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5338u, 3258u, 22538u), vec3<u32>(61871u, 0u, 1u)), u_input.a, _wgslsmith_div_u32(u_input.a, 0u), func_4(Struct_2(var_1, vec4<u32>(u_input.a, u_input.a, u_input.a, 14304u), Struct_1(vec2<f32>(var_1, 1000f), -21101i), vec2<f32>(1000f, -1278f)), Struct_1(vec2<f32>(-1632f, -2125f), 37157i), Struct_1(vec2<f32>(1148f, 210f), 1i)).b.x), ~vec4<u32>(0u, u_input.a, 26043u, u_input.a), vec4<bool>(false, true, true, true)) | ~(~func_1(u_input.a, true).b), func_4(func_4(func_1(u_input.a << (90079u % 32u), true), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(182f, var_1), vec2<f32>(1000f, var_1), vec2<bool>(true, false))), min(95i, u_input.c.x)), func_1(_wgslsmith_div_u32(u_input.a, 4294967295u), true).c), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-941f, var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1) - vec2<f32>(var_1, 200f)), any(vec3<bool>(false, false, false)))), i32(-1i) * -1i), func_1(~(~4294967295u), false).c).c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(944f, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1092f)), _wgslsmith_f_op_f32(f32(-1f) * -1240f)))))));
    var var_4 = var_3.c.b;
    var var_5 = u_input.d.x == func_4(var_3, func_4(func_1(u_input.a, false), Struct_1(var_3.d, -58278i), func_1(abs(31213u), var_2 < u_input.b.x).c).c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-404f, -822f)), -3972i)).c.b;
    let var_6 = 1i;
    let var_7 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(139f)))), _wgslsmith_f_op_f32(-1237f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2380f, var_3.c.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(floor(1597f)), false)) + 921f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(18079u, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))).b.wwy, -1563f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_3.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(var_6, Struct_2(var_7.x, vec4<u32>(4294967295u, var_3.b.x, 0u, 4294967295u), Struct_1(var_3.c.a, u_input.b.x), vec2<f32>(-134f, var_3.c.a.x)), Struct_2(1157f, var_3.b, Struct_1(vec2<f32>(var_1, 790f), u_input.c.x), vec2<f32>(1000f, 1000f)), true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(749f, var_3.c.a.x, 601f, var_7.x) * vec4<f32>(-367f, var_3.c.a.x, var_1, -1398f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1791f, var_7.x, var_3.c.a.x, -1543f)))))))));
}

