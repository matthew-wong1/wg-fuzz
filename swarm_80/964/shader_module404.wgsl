struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    let var_0 = Struct_2(arg_1.a, firstTrailingBit(3745u));
    var var_1 = Struct_1(arg_0.a.c, select(_wgslsmith_add_u32(1u, 1u), ~4294967295u, arg_0.a.e) < ~14626u, vec3<u32>(26723u, 43510u, max(0u, ~1u)), select(var_0.a.d, arg_1.a.d, var_0.a.d), true);
    var_1 = Struct_1(arg_0.a.a, any(!select(select(vec4<bool>(var_1.d.x, var_1.b, var_0.a.b, false), vec4<bool>(false, arg_2, var_0.a.b, true), vec4<bool>(arg_1.a.b, arg_0.a.d.x, arg_1.a.e, arg_1.a.d.x)), select(vec4<bool>(false, arg_0.a.d.x, arg_1.a.e, var_0.a.b), vec4<bool>(arg_0.a.d.x, true, var_1.d.x, false), arg_1.a.e), select(vec4<bool>(false, true, arg_2, var_1.e), vec4<bool>(true, arg_1.a.e, true, var_0.a.b), vec4<bool>(arg_2, false, true, var_0.a.d.x)))), arg_1.a.a, arg_1.a.d, !(!all(!arg_0.a.d.xx)));
    var_1 = arg_0.a;
    var var_2 = true;
    return vec4<u32>(52957u, 4294967295u, arg_0.a.a.x ^ 0u, ~(~(~0u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, 58941u), ~0u << (arg_0.x % 32u), ~(arg_0.x | 14908u), 9175u), ~abs(~vec4<u32>(4294967295u, 51974u, 21496u, u_input.b.x)));
    var_0 = _wgslsmith_mod_vec4_u32((vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(34401u, 1u, arg_0.x)), ~15063u, ~arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, 59896u), vec4<u32>(var_0.x, 1u, u_input.e, 77326u))) ^ ~(~vec4<u32>(u_input.e, 44958u, 0u, arg_0.x))) ^ vec4<u32>(arg_2.c.x, ~(~62888u), countOneBits(~u_input.b.x), _wgslsmith_add_u32(arg_2.c.x & var_0.x, arg_0.x)), ~(~min(vec4<u32>(1u, 1u, 0u, 23157u) ^ vec4<u32>(var_0.x, 1631u, 1u, var_0.x), ~vec4<u32>(var_0.x, arg_2.c.x, u_input.e, u_input.e))));
    var_0 = (_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~1u, arg_0.x & var_0.x, 21274u), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.e, arg_2.a.x, u_input.b.x, var_0.x)), ~vec4<u32>(u_input.b.x, 4294967295u, arg_0.x, u_input.e))) | (vec4<u32>(_wgslsmith_sub_u32(0u, arg_2.a.x), max(157u, arg_2.a.x), arg_0.x, 87928u) ^ _wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, arg_2.a.x, 60398u, u_input.b.x), vec4<u32>(arg_2.a.x, var_0.x, arg_0.x, arg_2.c.x)), select(vec4<u32>(u_input.e, 49109u, 0u, 0u), vec4<u32>(0u, u_input.b.x, 90762u, 22155u), vec4<bool>(false, arg_2.d.x, true, false)), select(vec4<u32>(var_0.x, u_input.e, 38636u, 0u), vec4<u32>(u_input.b.x, 3127u, arg_0.x, 1u), vec4<bool>(false, arg_2.d.x, arg_2.d.x, true))))) >> (func_3(Struct_2(arg_2, _wgslsmith_add_u32(~86634u, arg_2.c.x)), Struct_2(arg_2, ~91634u), true) % vec4<u32>(32u));
    return ~(-75315i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = -(~(-867i));
    var var_1 = -(~(vec4<i32>(var_0, 1i, -2147483647i, u_input.a) >> (~vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, 346u) % vec4<u32>(32u)))) & reverseBits(~(~vec4<i32>(-2147483647i, -17796i, u_input.d, u_input.c) | vec4<i32>(11854i, u_input.d, u_input.c, 38934i)));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(_wgslsmith_add_i32(6924i, -79289i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-35165i, u_input.d), i32(-1i) * -2147483647i), var_0)), func_2(min(_wgslsmith_mult_vec2_u32(arg_1.a.zx, arg_0.a.xx), select(~vec2<u32>(arg_0.c.x, 1438u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.c.x, 1u), vec2<u32>(arg_1.c.x, 73450u)), true)), -682f, arg_0), firstTrailingBit(1i) << (min(min(~arg_1.a.x, u_input.e), arg_0.c.x) % 32u), -1i);
    let var_2 = _wgslsmith_mult_i32(-37719i, -25719i);
    var_1 = vec4<i32>(_wgslsmith_sub_i32(var_2 ^ _wgslsmith_div_i32(0i, u_input.c), -_wgslsmith_mult_i32(2147483647i, var_1.x)) | 0i, select(0i, var_2, true == !arg_0.d.x), 3744i | u_input.a, -13108i);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = vec3<i32>(-1i) * -min(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d, -46672i, u_input.c), vec3<i32>(-1i, -1i, 14053i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, u_input.a, u_input.a), vec3<i32>(u_input.d, u_input.d, u_input.d)));
    var var_1 = arg_0;
    var var_2 = ~u_input.b.x;
    var_2 = var_1.c.x;
    let var_3 = arg_0.d.xy;
    return any(vec2<bool>(arg_0.d.x, var_1.e));
}

fn func_5(arg_0: bool) -> bool {
    let var_0 = Struct_2(func_1(func_1(func_1(Struct_1(vec3<u32>(u_input.e, u_input.b.x, 4294967295u), arg_0, vec3<u32>(u_input.b.x, u_input.e, 92222u), vec3<bool>(true, true, arg_0), false), func_1(Struct_1(vec3<u32>(1u, u_input.b.x, u_input.e), arg_0, vec3<u32>(u_input.b.x, 66021u, 0u), vec3<bool>(true, true, arg_0), false), Struct_1(vec3<u32>(u_input.e, 59732u, u_input.e), arg_0, vec3<u32>(32944u, u_input.b.x, u_input.e), vec3<bool>(true, arg_0, true), arg_0), true, vec3<bool>(arg_0, true, false)), false, vec3<bool>(arg_0, false, true)), Struct_1(~vec3<u32>(u_input.e, 1u, 3581u), arg_0, ~vec3<u32>(38641u, u_input.e, u_input.b.x), !vec3<bool>(arg_0, true, arg_0), true), false, !select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), false)), func_1(func_1(func_1(Struct_1(vec3<u32>(21048u, u_input.b.x, 26527u), true, vec3<u32>(u_input.e, u_input.e, 1u), vec3<bool>(arg_0, arg_0, false), true), Struct_1(vec3<u32>(u_input.e, 101991u, u_input.e), arg_0, vec3<u32>(u_input.b.x, 4294967295u, 16091u), vec3<bool>(false, arg_0, true), false), arg_0, vec3<bool>(true, true, arg_0)), func_1(Struct_1(vec3<u32>(1u, u_input.e, 4294967295u), true, vec3<u32>(u_input.b.x, u_input.e, u_input.e), vec3<bool>(false, arg_0, false), arg_0), Struct_1(vec3<u32>(u_input.e, u_input.b.x, u_input.b.x), false, vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<bool>(arg_0, arg_0, arg_0), false), arg_0, vec3<bool>(false, arg_0, true)), true, select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, arg_0))), func_1(Struct_1(vec3<u32>(0u, 29873u, u_input.b.x), arg_0, vec3<u32>(43985u, 1u, 40014u), vec3<bool>(arg_0, false, arg_0), arg_0), func_1(Struct_1(vec3<u32>(15745u, 34523u, 4294967295u), false, vec3<u32>(154678u, u_input.e, u_input.b.x), vec3<bool>(arg_0, arg_0, arg_0), true), Struct_1(vec3<u32>(u_input.e, u_input.e, u_input.b.x), arg_0, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(arg_0, true, arg_0), false), true, vec3<bool>(true, arg_0, true)), arg_0, !vec3<bool>(false, true, arg_0)), (u_input.c & 1i) != (u_input.d << (u_input.b.x % 32u)), func_1(func_1(Struct_1(vec3<u32>(1u, u_input.b.x, 4294967295u), arg_0, vec3<u32>(u_input.b.x, u_input.e, 1u), vec3<bool>(true, arg_0, arg_0), false), Struct_1(vec3<u32>(40053u, u_input.e, 39988u), false, vec3<u32>(u_input.e, 32623u, u_input.e), vec3<bool>(arg_0, arg_0, false), arg_0), false, vec3<bool>(false, false, true)), func_1(Struct_1(vec3<u32>(u_input.e, u_input.e, u_input.e), arg_0, vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<bool>(false, arg_0, arg_0), arg_0), Struct_1(vec3<u32>(u_input.b.x, u_input.e, 38828u), true, vec3<u32>(u_input.b.x, u_input.e, u_input.e), vec3<bool>(true, arg_0, arg_0), arg_0), false, vec3<bool>(true, false, arg_0)), !arg_0, select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0, true), false)).d), arg_0, !func_1(func_1(Struct_1(vec3<u32>(u_input.e, 8256u, 4294967295u), arg_0, vec3<u32>(8603u, 4294967295u, 1u), vec3<bool>(false, false, true), arg_0), Struct_1(vec3<u32>(u_input.b.x, u_input.e, 1u), arg_0, vec3<u32>(u_input.e, 81642u, 4294967295u), vec3<bool>(false, false, true), arg_0), true, vec3<bool>(arg_0, arg_0, true)), Struct_1(vec3<u32>(u_input.b.x, 4294967295u, 0u), arg_0, vec3<u32>(71107u, 0u, 4294967295u), vec3<bool>(false, arg_0, false), arg_0), arg_0, vec3<bool>(false, true, arg_0)).d), 108432u);
    let var_1 = firstTrailingBit(~(~vec4<u32>(var_0.b, 10766u, 31840u, 1u) ^ vec4<u32>(var_0.a.a.x, var_0.b, var_0.b, var_0.b))) & vec4<u32>(0u, ~u_input.e, _wgslsmith_clamp_u32(u_input.e, 1u, 1u), u_input.b.x);
    var var_2 = vec4<bool>(all(!select(var_0.a.d, !var_0.a.d, var_0.a.d.x)), true, any(var_0.a.d.xz), all(select(vec2<bool>(func_1(var_0.a, var_0.a, var_0.a.b, var_0.a.d).b, true), !func_1(Struct_1(var_0.a.c, arg_0, vec3<u32>(var_0.b, 4294967295u, u_input.b.x), var_0.a.d, false), Struct_1(var_1.xyz, var_0.a.d.x, var_1.wzy, vec3<bool>(true, true, var_0.a.e), true), arg_0, var_0.a.d).d.xz, var_0.a.d.zz)));
    var var_3 = i32(-1i) * -_wgslsmith_mult_i32((u_input.d >> (u_input.b.x % 32u)) | _wgslsmith_sub_i32(-5194i, 19028i), -(58856i & u_input.a));
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(62360u, 25114u, var_0.a.c.x)), ~vec3<u32>(var_1.x, 61999u, u_input.b.x)), var_0.a.d.x, var_1.zxw, vec3<bool>(func_1(var_0.a, Struct_1(var_0.a.a, var_2.x, vec3<u32>(1u, var_1.x, 0u), var_0.a.d, true), true, select(var_0.a.d, var_2.xwx, var_2.x)).b, all(vec2<bool>(var_0.a.d.x, var_0.a.b)), true), (18974i >> (var_1.x % 32u)) >= abs(1i)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, var_0.b, u_input.b.x, 16030u)), ~(~var_1)) ^ ~(select(68504u, var_1.x, true) ^ (4294967295u << (var_1.x % 32u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, func_5(func_4(Struct_1(~vec3<u32>(u_input.b.x, 4294967295u, 63847u), true, ~vec3<u32>(u_input.b.x, u_input.e, u_input.b.x), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), false), Struct_2(func_1(Struct_1(vec3<u32>(4294967295u, u_input.e, 1u), true, vec3<u32>(1057u, u_input.e, 4294967295u), vec3<bool>(true, true, true), true), Struct_1(vec3<u32>(21691u, u_input.e, u_input.b.x), false, vec3<u32>(u_input.e, 10487u, 1u), vec3<bool>(false, false, true), false), false, vec3<bool>(false, true, true)), abs(9955u)))), true & (_wgslsmith_sub_u32(~u_input.b.x, countOneBits(u_input.b.x)) > _wgslsmith_add_u32(u_input.b.x << (4949u % 32u), ~0u)), reverseBits(~u_input.e) != _wgslsmith_add_u32(~11748u, countOneBits(firstTrailingBit(u_input.b.x))));
    let var_1 = u_input.d;
    var var_2 = Struct_2(Struct_1(max(firstTrailingBit(~vec3<u32>(0u, 72712u, u_input.e)), min(vec3<u32>(u_input.e, u_input.e, u_input.e) | vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), ~vec3<u32>(38092u, u_input.b.x, u_input.e))), false, (vec3<u32>(u_input.b.x, 36115u, 0u) << (~vec3<u32>(4294967295u, u_input.b.x, 41745u) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 59891u, u_input.e), vec3<u32>(62358u, u_input.e, u_input.b.x) >> (vec3<u32>(u_input.e, 9749u, u_input.b.x) % vec3<u32>(32u))), select(var_0.wxy, !var_0.zzy, select(any(var_0.xwy), 4294967295u >= u_input.e, var_0.x)), var_0.x | false), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 0u), ~u_input.b.x >> (1844u % 32u)));
    var_2 = Struct_2(var_2.a, _wgslsmith_mod_u32(abs(24122u), select(countOneBits(0u), reverseBits(~35493u), true)));
    var_2 = Struct_2(var_2.a, var_2.b);
    var_2 = Struct_2(var_2.a, _wgslsmith_mod_u32(9113u, ~8900u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, u_input.b.x & u_input.e, ~38457u, u_input.d, var_2.a.c);
}

