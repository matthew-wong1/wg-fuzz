struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(trunc(218f))) * _wgslsmith_f_op_f32(f32(-1f) * -1890f)));
}

fn func_2() -> Struct_3 {
    let var_0 = max(abs(~(~vec4<u32>(u_input.b.x, 0u, 1u, 23049u) & (vec4<u32>(u_input.a.x, u_input.a.x, 4365u, 78321u) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 79937u)))), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-590f * -300f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(func_3(Struct_1(true, -1283f), Struct_1(true, 1000f), Struct_3(-941f), Struct_2(u_input.b.x, Struct_1(true, -182f), Struct_1(false, 498f), Struct_1(false, 973f), Struct_1(false, 910f))))), true)));
    var var_2 = Struct_1(all(!vec3<bool>(any(vec2<bool>(false, true)), select(true, false, false), true)), 1075f);
    let var_3 = select(vec2<bool>(!var_2.a, all(vec4<bool>(!var_2.a, false, true, true))), select(vec2<bool>(true, var_2.a), vec2<bool>(!any(vec3<bool>(false, false, var_2.a)), true), var_2.a), !select(!(!vec2<bool>(var_2.a, var_2.a)), vec2<bool>(var_2.b >= 234f, true), select(select(vec2<bool>(var_2.a, true), vec2<bool>(var_2.a, true), true), !vec2<bool>(true, var_2.a), select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, var_2.a)))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -998f) * 1209f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))) - _wgslsmith_f_op_f32(var_2.b + var_2.b)));
    return var_4;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> vec4<u32> {
    let var_0 = !select(vec3<bool>(!all(vec2<bool>(true, false)), true, true), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), arg_0.x <= arg_2.a, any(vec2<bool>(true, true)) && any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(func_2().a + _wgslsmith_f_op_f32(select(arg_0.x, arg_2.a, false))) >= arg_0.x);
    var var_1 = 846f;
    var_1 = arg_2.a;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(135f, arg_0.x)))))) - func_2().a);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.yxx, vec3<u32>(firstLeadingBit(0u), u_input.b.x, u_input.a.x), abs(vec3<u32>(0u, u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)))), vec3<u32>(u_input.a.x, ~u_input.b.x, u_input.b.x));
    return max(u_input.b, reverseBits(firstLeadingBit(vec4<u32>(0u, u_input.a.x, 38146u, 59147u) | vec4<u32>(4294967295u, 1u, u_input.b.x, 68988u)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 75282u, u_input.b.x), vec4<u32>(u_input.a.x, 12712u, u_input.b.x, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, 12281u, u_input.a.x, u_input.b.x)) % vec4<u32>(32u))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_div_vec4_u32(select(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-911f, -818f, -388f, -613f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(526f, -357f, -1615f, -880f), vec4<f32>(1828f, -246f, -1000f, 110f)))), ~max(vec4<i32>(0i, 13340i, -1i, 22263i), vec4<i32>(2147483647i, -2147483647i, -1i, 37338i)), func_2(), -2147483647i), max(~u_input.b, func_4(vec4<f32>(1f, 1f, 1f, 1f), reverseBits(vec4<i32>(8423i, -38232i, -15033i, -1i)), func_2(), firstTrailingBit(77970i))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, any(vec3<bool>(false, false, true))), true)), u_input.b);
    var var_1 = Struct_1(!((_wgslsmith_f_op_f32(ceil(-2376f)) <= _wgslsmith_f_op_f32(f32(-1f) * -800f)) != true), func_2().a);
    return var_1.a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = min(firstLeadingBit(~u_input.b.x), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, countOneBits(4294967295u))), u_input.a.x));
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(0u, max(43544u, u_input.b.x)), var_1 & 47814u, ~1u, ~u_input.b.x) ^ ~u_input.b);
    var var_3 = _wgslsmith_mod_u32(u_input.a.x, ~4294967295u);
    var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(23694u, ~var_2.x), max(0u, u_input.b.x)), firstTrailingBit(~(_wgslsmith_mult_u32(var_2.x, 4294967295u) << (var_1 % 32u))));
    return ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.zyy, select(u_input.b.xzx, u_input.b.yxx, vec3<bool>(true, arg_2.a, false))), u_input.b.x) ^ 101159u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(func_5(1f, Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -450f)), Struct_1(func_1(), -787f)), ~(~(~254u)), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.b.wwy, u_input.b.zzx), u_input.a.x << (~u_input.a.x % 32u))), select(_wgslsmith_div_vec3_u32(~(u_input.b.zxw << (u_input.b.zww % vec3<u32>(32u))), vec3<u32>(~u_input.b.x, 64891u, u_input.b.x)), vec3<u32>(u_input.b.x, func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2147f, -2082f, 310f, -1219f), vec4<f32>(-724f, -582f, 394f, 1000f))), vec4<i32>(1i, 1i, 1i, 1i), Struct_3(-299f), 1i).x, u_input.b.x), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_1 = func_2();
    let var_2 = true;
    let var_3 = var_1.a;
    var var_4 = var_2 || var_2;
    var var_5 = Struct_2(~var_0.x, Struct_1(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(651f - var_3)) * _wgslsmith_f_op_f32(var_1.a * -532f))), Struct_1(var_2, var_1.a), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-732f - var_1.a) - 471f))), Struct_1(true, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(26335i, 1i), abs(-28630i), 1i), -_wgslsmith_mod_i32(min(1i, 2147483647i), _wgslsmith_mod_i32(15711i, -25813i))));
}

