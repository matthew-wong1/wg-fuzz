struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    global0 = 1f;
    global0 = 351f;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-520f)))) * 780f), 189f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1058f))))));
    let var_0 = 1i;
    return countOneBits(min(~vec2<u32>(1u, ~u_input.d.x), vec2<u32>(_wgslsmith_clamp_u32(abs(37920u), u_input.e.x, ~u_input.e.x), ~7844u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    global0 = arg_0.c.a;
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1290f, -2022f, _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec3_f32(round(arg_0.c.e.yzx)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, arg_0.c.e.x, _wgslsmith_div_f32(-567f, 1096f)))));
    var var_2 = _wgslsmith_dot_vec3_u32(max(firstTrailingBit(arg_2.zyz), _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_0.c.b.x, 0u, _wgslsmith_sub_u32(4294967295u, 34794u)), ~firstTrailingBit(vec3<u32>(57082u, u_input.e.x, arg_0.c.b.x)), vec3<u32>(~u_input.e.x, ~12534u, u_input.e.x & 0u))), u_input.d.zxw >> (arg_2.zyx % vec3<u32>(32u)));
    let var_3 = arg_3.c.c;
    return _wgslsmith_f_op_f32(max(-667f, arg_3.c.a));
}

fn func_2() -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-364f * 577f), _wgslsmith_f_op_f32(652f + -221f))) - -1873f))) + _wgslsmith_f_op_f32(func_4(Struct_2(-15726i, ~(u_input.e.ww >> (vec2<u32>(8749u, 6098u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.d.zwz, any(vec2<bool>(true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<f32>(-562f, -357f, -1143f, -1733f))), u_input.b, ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(10178u, u_input.e.x, u_input.e.x, 0u), vec4<u32>(72995u, u_input.e.x, u_input.d.x, 29675u)), abs(u_input.e)), Struct_2(58442i, func_3(), Struct_1(_wgslsmith_f_op_f32(331f - -1345f), max(u_input.d.ywx, vec3<u32>(u_input.d.x, 12860u, u_input.d.x)), any(vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(401f, -1677f, 818f, -184f))))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-605f, 370f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-418f, -1126f) - _wgslsmith_f_op_f32(select(-591f, -1508f, true))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * 504f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-426f - 1115f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, u_input.a, u_input.c.x)), max(vec2<u32>(u_input.e.x, u_input.d.x), vec2<u32>(0u, 4294967295u)), Struct_1(532f, u_input.e.wzz, true, vec4<bool>(false, true, true, false), vec4<f32>(893f, -320f, 291f, 1804f))), u_input.b, vec4<u32>(34126u, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 39258u, max(u_input.e.x, 0u)), Struct_2(u_input.b.x, u_input.d.wz, Struct_1(305f, vec3<u32>(0u, u_input.d.x, 41185u), true, vec4<bool>(true, false, true, true), vec4<f32>(-226f, 1040f, -847f, -1000f))))), _wgslsmith_f_op_f32(-1f))));
    let var_0 = vec4<f32>(-900f, -399f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(45730i, vec2<u32>(11466u, 4294967295u), Struct_1(672f, u_input.d.wyy, false, vec4<bool>(false, false, true, false), vec4<f32>(-1086f, -221f, -1499f, -346f))), u_input.b, u_input.e, Struct_2(-1i, u_input.d.xw, Struct_1(-762f, vec3<u32>(u_input.e.x, u_input.e.x, 26276u), false, vec4<bool>(true, false, false, false), vec4<f32>(-1506f, -461f, -556f, -404f))))))), _wgslsmith_f_op_f32(ceil(-573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -753f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(u_input.a, u_input.d.yw, Struct_1(-1416f, u_input.d.yzw, true, vec4<bool>(false, true, true, true), vec4<f32>(1000f, 1278f, -1247f, -295f))), -u_input.b, u_input.e, Struct_2(u_input.b.x, vec2<u32>(97020u, 12324u), Struct_1(220f, vec3<u32>(u_input.e.x, 29289u, 3380u), true, vec4<bool>(true, false, true, false), vec4<f32>(1687f, -1423f, 288f, 1000f))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))));
    var var_1 = u_input.a;
    return u_input.c.x < reverseBits(-17501i);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_f32(arg_3.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-161f)))) * -743f));
    let var_1 = Struct_2(_wgslsmith_clamp_i32(0i, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.c.x) >> ((vec3<u32>(1u, arg_3.b.x, arg_0.b.x) & vec3<u32>(28031u, u_input.e.x, 108746u)) % vec3<u32>(32u)), u_input.b)), vec2<u32>(63912u, _wgslsmith_add_u32(select(~4294967295u, ~1u, !arg_3.c.d.x), ~0u)), Struct_1(678f, ~(~arg_0.b), arg_0.c, vec4<bool>(false, true, !arg_0.d.x, func_2()), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(var_0 + 524f), _wgslsmith_f_op_f32(abs(arg_3.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, arg_3.c.e.x, 681f, arg_1)))), !arg_0.d))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(arg_3, u_input.b, countOneBits(u_input.d), var_1)))) * 124f));
    var var_2 = true;
    let var_3 = var_1.c.d.yw;
    return -21580i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.a) ^ u_input.b, abs(vec3<i32>(23272i, u_input.a, -2147483647i))), _wgslsmith_div_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-41150i, -37546i, -3611i)))), vec3<i32>(6536i, (u_input.b.x & u_input.a) | u_input.c.x, _wgslsmith_div_i32(func_1(Struct_1(-549f, u_input.d.xyy, false, vec4<bool>(false, false, false, true), vec4<f32>(750f, 1747f, -622f, 349f)), -1620f, 33007u, Struct_2(-39848i, vec2<u32>(u_input.e.x, u_input.d.x), Struct_1(278f, u_input.d.yyx, true, vec4<bool>(true, false, true, true), vec4<f32>(501f, -724f, -650f, 774f)))), u_input.c.x))), u_input.b);
    var var_2 = vec3<u32>(1u, _wgslsmith_add_u32(24084u, u_input.e.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.d.x, u_input.e.x, 4294967295u), vec4<u32>(u_input.e.x, u_input.d.x, 0u, 1u), vec4<bool>(true, true, true, true)), ~vec4<u32>(u_input.d.x, 43240u, 4294967295u, u_input.d.x))) | vec3<u32>(u_input.d.x, u_input.e.x, u_input.e.x);
    var var_3 = ~(u_input.e.x >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.d.x)), abs(var_2.yy)), ~var_2.xz) % 32u));
    let var_4 = Struct_1(328f, u_input.e.xzz, !any(vec3<bool>(true, true, true)), vec4<bool>(true, any(vec2<bool>(true, true)), true, true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -420f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -337f)));
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_3().x, -(~u_input.b), u_input.b.x);
}

