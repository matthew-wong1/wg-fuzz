struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(33230u, 5879u, 30298u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> vec2<bool> {
    global0 = firstLeadingBit(select(min(select(vec3<u32>(20774u, 4294967295u, global0.x), vec3<u32>(10892u, 43834u, 25332u), vec3<bool>(arg_1.a.c, arg_1.a.a.x, false)), ~arg_0.b) ^ ~(~arg_0.a.d), ~vec3<u32>(~global0.x, 1777u, arg_2 ^ 0u), any(vec2<bool>(arg_1.a.a.x, arg_0.a.a.x))));
    let var_0 = vec4<i32>(1i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -26012i), ~vec2<i32>(2147483647i, 9287i))), reverseBits(i32(-1i) * -2147483647i)), -6707i, -2147483647i);
    var var_1 = select(select(!select(select(vec3<bool>(arg_1.a.a.x, arg_1.a.c, true), vec3<bool>(true, arg_0.a.a.x, false), arg_1.a.a.x), !vec3<bool>(false, arg_1.a.c, true), select(vec3<bool>(arg_1.a.c, arg_1.a.a.x, true), vec3<bool>(arg_1.a.c, true, arg_1.a.a.x), vec3<bool>(true, false, arg_1.a.c))), select(vec3<bool>(any(arg_0.a.a), all(vec4<bool>(true, arg_1.a.c, true, true)), true), !(!vec3<bool>(true, arg_1.a.c, arg_0.a.a.x)), !select(vec3<bool>(arg_1.a.c, arg_1.a.c, false), vec3<bool>(arg_0.a.c, true, false), arg_0.a.a.x)), !select(vec3<bool>(arg_1.a.c, false, true), !vec3<bool>(arg_1.a.c, arg_1.a.a.x, arg_1.a.c), select(vec3<bool>(arg_1.a.c, arg_1.a.a.x, false), vec3<bool>(false, false, arg_1.a.a.x), true))), !vec3<bool>(arg_0.a.c & any(arg_1.a.a), false, false), select(!select(vec3<bool>(false, arg_0.a.c, true), select(vec3<bool>(arg_1.a.a.x, arg_1.a.c, false), vec3<bool>(false, arg_0.a.c, true), vec3<bool>(false, true, arg_0.a.a.x)), true), !(!select(vec3<bool>(arg_1.a.c, true, true), vec3<bool>(true, arg_1.a.a.x, arg_1.a.c), arg_0.a.c)), select(select(!vec3<bool>(arg_0.a.a.x, true, arg_0.a.c), !vec3<bool>(true, arg_1.a.a.x, true), select(vec3<bool>(arg_0.a.c, false, arg_0.a.a.x), vec3<bool>(true, false, arg_1.a.a.x), arg_1.a.a.x)), !(!vec3<bool>(arg_1.a.c, true, arg_0.a.a.x)), !select(vec3<bool>(arg_1.a.a.x, false, true), vec3<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.a.x), false))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2, arg_1.b.x, 20518u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, arg_2), u_input.a) % vec3<u32>(32u))), u_input.a), 0u, _wgslsmith_div_u32(~1u, 1u));
    var_2 = ~(u_input.a & ~vec3<u32>(11503u, 40977u & u_input.a.x, arg_0.a.d.x));
    return !select(arg_1.a.a, arg_0.a.a, select(!(!arg_0.a.a), arg_0.a.a, !(!arg_1.a.a)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = ~arg_0.x;
    let var_1 = Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.a.x, u_input.a.x, ~firstLeadingBit(_wgslsmith_mult_u32(2666u, 0u))), true, _wgslsmith_clamp_vec3_u32(arg_0.zxw, _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(1u, global0.x, 67903u), arg_2.b << (vec3<u32>(u_input.a.x, global0.x, 35861u) % vec3<u32>(32u)), all(vec3<bool>(arg_2.c, true, arg_2.a.x))), select(_wgslsmith_mod_vec3_u32(arg_0.xyw, vec3<u32>(global0.x, 17937u, 24966u)), reverseBits(vec3<u32>(12179u, arg_0.x, 1u)), !vec3<bool>(arg_1.x, arg_1.x, arg_2.a.x)), vec3<u32>(40060u | arg_0.x, 74012u, global0.x)), u_input.a));
    var_0 = 0u;
    let var_2 = select(!vec3<bool>(false, any(vec2<bool>(arg_1.x, arg_1.x)), func_3(Struct_2(Struct_1(arg_1, arg_2.d, true, var_1.d), var_1.b), Struct_2(Struct_1(arg_2.a, vec3<u32>(global0.x, 1u, 1u), true, vec3<u32>(44696u, global0.x, arg_3.x)), vec3<u32>(arg_0.x, arg_0.x, 1u)), ~arg_2.b.x, ~arg_0.x).x), !select(!select(vec3<bool>(var_1.a.x, false, false), vec3<bool>(arg_1.x, var_1.c, true), false), vec3<bool>(arg_1.x && true, any(vec2<bool>(arg_2.c, true)), arg_2.a.x), !vec3<bool>(arg_1.x, false, true)), vec3<bool>(false, !(!arg_1.x), arg_1.x));
    let var_3 = arg_2;
    return var_2.xz;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = any(!arg_0.a);
    var var_1 = 0i;
    global0 = ~(~(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_0.d.x), arg_0.d.x, 1u) ^ ~vec3<u32>(2507u, global0.x, 1u)));
    let var_2 = Struct_3(vec4<u32>(66108u, 4294967295u, 0u, firstLeadingBit(_wgslsmith_div_u32(~41930u, 1u))), Struct_1(arg_0.a, ~arg_0.b, all(select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, var_0, true, true), vec4<bool>(var_0, arg_0.a.x, var_0, true))) || true, u_input.a));
    let var_3 = 821f;
    return Struct_2(Struct_1(select(func_4(var_2.a, func_3(Struct_2(var_2.b, vec3<u32>(34344u, 1u, u_input.a.x)), Struct_2(Struct_1(var_2.b.a, vec3<u32>(1u, 4294967295u, 4294967295u), var_0, u_input.a), vec3<u32>(u_input.a.x, 2562u, 0u)), var_2.b.d.x, u_input.a.x), arg_0, vec4<u32>(1u, global0.x, 1u, 8622u)), vec2<bool>(true, true), var_2.b.a), max(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(1u, var_2.b.b.x, arg_0.d.x)) & arg_0.d, ~arg_0.d), func_4(~_wgslsmith_clamp_vec4_u32(var_2.a, var_2.a, vec4<u32>(9533u, u_input.a.x, 1u, u_input.a.x)), var_2.b.a, Struct_1(var_2.b.a, u_input.a, var_3 != var_3, vec3<u32>(arg_0.b.x, global0.x, var_2.a.x)), var_2.a).x, ~arg_0.b), vec3<u32>(~arg_0.d.x, arg_0.d.x, var_2.a.x ^ min(_wgslsmith_mod_u32(var_2.b.b.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(23708u, 4294967295u, 0u), var_2.b.d))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = Struct_2(arg_3.b, countOneBits(min(~u_input.a, vec3<u32>(global0.x, 0u, _wgslsmith_dot_vec2_u32(arg_3.b.b.yz, vec2<u32>(1u, 19881u))))));
    var_0 = func_2(Struct_1(arg_3.b.a, vec3<u32>(~global0.x, ~_wgslsmith_add_u32(8268u, 1u), u_input.a.x), true, ~(arg_3.a.ywx << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a.x, global0.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(32322u, 27397u, 1u)) % vec3<u32>(32u)))));
    global0 = arg_3.a.wzx;
    var var_1 = 868f;
    var var_2 = func_2(func_2(func_2(func_2(func_2(var_0.a).a).a).a).a);
    return vec3<i32>(-1i, min(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 25580i), vec3<i32>(1i, 23714i, 32723i))), firstLeadingBit(abs(-2147483647i << (arg_3.a.x % 32u)))) >> (vec3<u32>(func_2(var_2.a).b.x, ~(15247u | u_input.a.x), _wgslsmith_mult_u32(0u, ~(~global0.x))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(39051i, ~(i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(func_1(vec3<f32>(-1022f, -1000f, -1224f), vec4<f32>(-1000f, -555f, 766f, 924f), true, Struct_3(vec4<u32>(4294967295u, global0.x, 4294967295u, 53940u), Struct_1(vec2<bool>(true, true), u_input.a, true, vec3<u32>(global0.x, global0.x, 4294967295u)))), vec3<i32>(1i, 1i, 1i)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2881i, -2147483647i, -71241i), vec3<i32>(-2147483647i, 1182i, 10710i), vec3<i32>(-21179i, 2147483647i, -1i)), -vec3<i32>(-7463i, -47107i, 1i), vec3<bool>(false, true, true))), _wgslsmith_div_i32(-1i, -2147483647i)), -countOneBits(1i) >> ((~select(21605u, u_input.a.x, false) & 40387u) % 32u));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1336f, -1475f, -215f), vec3<f32>(1060f, -505f, -617f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1032f, -1153f, 1000f, 1000f), vec4<f32>(1070f, 329f, 1671f, -445f))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-965f)), _wgslsmith_f_op_f32(ceil(1549f)), -763f, -2070f)) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(1180f * 692f))), _wgslsmith_f_op_f32(-336f - _wgslsmith_div_f32(-760f, -1478f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1311f)) + -684f), _wgslsmith_f_op_f32(f32(-1f) * -681f))), false, Struct_3(~max(select(vec4<u32>(52856u, global0.x, u_input.a.x, 1u), vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, true)), vec4<u32>(global0.x, u_input.a.x, global0.x, global0.x) >> (vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u))), Struct_1(!func_2(Struct_1(vec2<bool>(true, true), vec3<u32>(3848u, 0u, 9221u), false, u_input.a)).a.a, ~vec3<u32>(1u, global0.x, global0.x), true, vec3<u32>(global0.x, ~9961u, global0.x))));
    var var_2 = Struct_3(max(vec4<u32>(~(~global0.x), 20845u & ~global0.x, 0u, u_input.a.x), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, ~2378u), ~0u << (u_input.a.x % 32u), 4294967295u, ~(u_input.a.x | 67193u))), func_2(Struct_1(vec2<bool>(true, true), ~select(vec3<u32>(u_input.a.x, global0.x, 1u), vec3<u32>(global0.x, global0.x, 1u), true), false, ~u_input.a)).a);
    let var_3 = 81315u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(865f)) * _wgslsmith_f_op_f32(f32(-1f) * -812f)))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-519f, 1000f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2193f, -914f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1531f, var_4))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4, -237f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_4, var_4), vec2<f32>(361f, var_4))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-265f, var_4), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-529f, 206f), vec2<f32>(-763f, var_4)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, -675f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, -1119f))))));
    var var_6 = var_0;
    let var_7 = Struct_3(_wgslsmith_add_vec4_u32(firstTrailingBit(abs(var_2.a)), ~(~var_2.a)), func_2(var_2.b).a);
    var var_8 = select(~abs(firstLeadingBit(max(0u, u_input.a.x))), 4294967295u, !var_7.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + var_5.x)), -330f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-595f)))))), -948f);
}

