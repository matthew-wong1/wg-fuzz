struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    let var_0 = Struct_1(u_input.b.x, arg_1, global0[_wgslsmith_index_u32(~4294967295u, 15u)], 1u);
    var var_1 = u_input.a.yx;
    var var_2 = vec3<u32>(var_0.c, _wgslsmith_sub_u32(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.x & 0u), 15u)]), 49095u), ~1u);
    return _wgslsmith_f_op_f32(501f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) - -1000f))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(arg_1.b);
    global0 = array<u32, 15>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(933f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1277f) * arg_0), true)), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(func_3(1i, 362f)))) - _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return Struct_1(max(-1i, reverseBits(-14081i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -296f), all(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(sign(-445f)))), _wgslsmith_sub_u32(var_0.a.c, var_0.a.c), _wgslsmith_add_u32(~u_input.a.x, ~(arg_1.b.d >> (~u_input.a.x % 32u))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(-1424f));
    let var_1 = vec3<i32>(abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(0i, 1i)), vec2<i32>(2147483647i, u_input.b.x) >> (u_input.a.zy % vec2<u32>(32u)))) << (min(reverseBits(0u), global0[_wgslsmith_index_u32(37435u, 15u)]) % 32u), arg_0.a.a, _wgslsmith_mult_i32(-24514i, u_input.b.x));
    var var_2 = _wgslsmith_sub_i32(arg_0.a.a, abs(-_wgslsmith_mult_i32(-50992i, u_input.b.x))) ^ -1i;
    let var_3 = _wgslsmith_add_vec4_i32(-firstLeadingBit(u_input.b) | -(~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 56354i), vec4<i32>(66359i, u_input.b.x, u_input.b.x, 29129i))), ~u_input.b);
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1656f - -611f), _wgslsmith_f_op_f32(sign(arg_0.a.b)), arg_0.a.b, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1676f)) - arg_0.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-254f, -1498f, false)), arg_0.a.b, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.b + -1086f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1197f + arg_0.a.b))))));
    return ~(max(59460i, ~_wgslsmith_mod_i32(var_3.x, arg_0.a.a)) | -select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(var_3.x, 2147483647i)), -1i, true));
}

fn func_5(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = vec4<u32>(13076u, min(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, ~u_input.a.x, 0u & u_input.a.x), 1u), 26750u), ~reverseBits(1u >> (firstLeadingBit(10222u) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(35852u, 0u), u_input.a.yy));
    global0 = array<u32, 15>();
    let var_1 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 305f)), Struct_2(func_2(441f, Struct_2(Struct_1(arg_0.x, -2136f, u_input.a.x, var_0.x), Struct_1(-31884i, -813f, u_input.a.x, var_0.x), 0u, -249f)), func_2(-794f, Struct_2(Struct_1(2147483647i, 425f, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), Struct_1(arg_0.x, -483f, u_input.a.x, 0u), u_input.a.x, -110f)), u_input.a.x, -1022f)), Struct_1(-1i << (u_input.a.x % 32u), 1f, firstTrailingBit(~global0[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_div_u32(4294967295u, func_2(1149f, Struct_2(Struct_1(-11525i, 935f, u_input.a.x, 4294967295u), Struct_1(15853i, 1067f, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x), var_0.x, 1000f)).c)), _wgslsmith_div_u32(~min(var_0.x, var_0.x), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-597f))) - _wgslsmith_f_op_f32(1625f - -465f))), Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.x, arg_0.x), 0i), _wgslsmith_f_op_f32(step(-1142f, _wgslsmith_f_op_f32(func_3(u_input.b.x, -808f)))), max(var_0.x, 10842u) | _wgslsmith_add_u32(var_0.x, 24057u), (39858u | u_input.a.x) | ~76232u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1851f), Struct_2(Struct_1(-1i, 756f, u_input.a.x, u_input.a.x), func_2(-251f, Struct_2(Struct_1(-1i, 124f, 0u, var_0.x), Struct_1(7595i, 255f, var_0.x, u_input.a.x), 36143u, 1000f)), 0u, _wgslsmith_f_op_f32(-208f + -254f))), ~_wgslsmith_dot_vec3_u32(u_input.a, var_0.zzy) << (79499u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -918f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_1.a.a.b, 1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.a.b, _wgslsmith_f_op_f32(min(var_1.b.a.b, -743f))) + var_1.b.a.b), _wgslsmith_f_op_f32(-179f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1308f, var_1.b.b.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.b)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_1.b.b.b, true))), -1193f, var_1.a.b.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1171f, var_1.a.b.b))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1049f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.d, var_1.a.d), var_1.b.d), _wgslsmith_f_op_f32(-519f * var_1.a.b.b), _wgslsmith_f_op_f32(104f + -1323f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.b, -914f, -603f, var_1.b.a.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a.b, 1379f, -980f, -479f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1149f, var_1.b.b.b, 1673f, var_1.b.a.b), vec4<f32>(3111f, 2030f, var_1.a.a.b, -1365f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1.a.b.b, -1000f, -1657f)))))));
    return Struct_4(func_2(var_3.x, Struct_2(Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1006f), ~71756u, 55088u), Struct_1(14704i, var_3.x, 4294967295u, 67u), ~(~global0[_wgslsmith_index_u32(var_0.x, 15u)]), func_2(_wgslsmith_div_f32(var_1.a.d, -226f), Struct_2(var_1.b.b, var_1.a.b, 27346u, -1660f)).b)));
}

fn func_1() -> f32 {
    global0 = array<u32, 15>();
    let var_0 = ~39148u >> (u_input.a.x % 32u);
    global0 = array<u32, 15>();
    var var_1 = func_5(vec3<i32>(func_4(Struct_4(func_2(-1922f, Struct_2(Struct_1(1i, -1394f, var_0, 0u), Struct_1(u_input.b.x, 1160f, u_input.a.x, 4294967295u), 4294967295u, -1000f))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(13028u, 103989u, u_input.a.x, var_0), vec4<u32>(4294967295u, 4294967295u, 27719u, u_input.a.x)), u_input.a.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)])), u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.yx), -u_input.b.ww), select(vec2<i32>(u_input.b.x, 41975i), vec2<i32>(2147483647i, -1i), false) | -u_input.b.xz)));
    let var_2 = func_5(vec3<i32>(~firstTrailingBit(5013i) & -2147483647i, -2147483647i, 0i));
    return 2132f;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(arg_3.a, func_5(u_input.b.wyy).a, 14306u, arg_3.a.b), Struct_2(arg_3.a, Struct_1(-u_input.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-620f)), arg_1)), ~1u, global0[_wgslsmith_index_u32(~(~42587u), 15u)]), 4294967295u, 1736f));
    let var_1 = var_0.b;
    let var_2 = !all(select(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(false, false, arg_2.x, true), arg_2.x), !arg_2.x), select(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, false, true), vec4<bool>(false, true, arg_2.x, true)), !vec4<bool>(arg_2.x, false, false, false), false)));
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return Struct_2(Struct_1(var_1.b.a, -1706f, 10929u, ~(~1u)), arg_3.a, u_input.a.x, -1635f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = func_6(max(global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-370f, 633f) - -640f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1415f, -1000f)))), _wgslsmith_f_op_f32(func_1()), true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), false)), all(vec4<bool>(true, true, true, true))), Struct_4(Struct_1(~0i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-142f + -686f), _wgslsmith_f_op_f32(1000f + -2173f)), ~4294967295u, 1u)));
    var var_1 = vec4<u32>(77009u, ~(_wgslsmith_mod_u32(~37872u, 2922u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 15u)] % 32u)) ^ (87975u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(69315u, 4294967295u, var_0.b.d, u_input.a.x), vec4<u32>(21507u, 34508u, 1u, 4294967295u)))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(60218u, u_input.a.x), ~(~var_0.b.c), u_input.a.x >> (_wgslsmith_mod_u32(13420u & var_0.a.c, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x)) % 32u)), 14865u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-6715i, var_0.b.a), select(vec2<i32>(-1i, u_input.b.x), u_input.b.zx, false), -u_input.b.yy) ^ vec2<i32>(1i, var_0.a.a), u_input.b.zyz, -2026f, 30720u << (((~58822u << (~global0[_wgslsmith_index_u32(var_0.c, 15u)] % 32u)) >> (_wgslsmith_dot_vec2_u32(var_1.yz, u_input.a.zz) % 32u)) % 32u));
}

