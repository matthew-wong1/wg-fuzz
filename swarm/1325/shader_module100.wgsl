struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-783f)) - _wgslsmith_f_op_f32(sign(-554f))))));
    let var_1 = all(select(vec3<bool>(!(!arg_0.d.c), all(select(arg_0.a.a.ywx, arg_0.a.a.ywy, arg_0.e.a.a.x)), true), select(select(!arg_0.e.a.a.zyy, vec3<bool>(arg_0.a.a.x, true, false), !vec3<bool>(arg_0.a.a.x, true, arg_0.a.a.x)), arg_0.e.b, arg_0.d.c), arg_0.a.a.xwx));
    let var_2 = Struct_4(arg_0.d.b.x, arg_0.a);
    var var_3 = var_2.b;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1621f)), _wgslsmith_div_f32(471f, -407f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1030f))))));
    return arg_0.e.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = Struct_4(!(!arg_0.a.a.x & (select(false, arg_1.b.a.x, false) || !arg_0.b.x)), Struct_1(select(select(select(vec4<bool>(arg_2, true, arg_1.a, false), vec4<bool>(false, true, arg_0.c, arg_0.b.x), arg_1.a), select(vec4<bool>(true, arg_0.c, true, arg_2), arg_0.a.a, false), select(vec4<bool>(arg_0.c, false, true, arg_2), vec4<bool>(true, arg_2, true, arg_0.c), true)), !select(vec4<bool>(arg_0.a.a.x, arg_0.c, true, arg_2), vec4<bool>(arg_0.b.x, true, arg_0.c, true), true), !(!arg_0.a.a)), countOneBits(_wgslsmith_add_u32(59895u, arg_1.b.b & arg_3))));
    let var_1 = Struct_1(!select(!select(arg_0.a.a, vec4<bool>(false, var_0.a, true, false), arg_1.a), vec4<bool>(true, -48095i != u_input.a, true, all(vec4<bool>(var_0.a, false, true, arg_1.a))), var_0.a | arg_1.a), ~1u & ~(~max(var_0.b.b, arg_3)));
    let var_2 = true;
    let var_3 = arg_0.a;
    var var_4 = Struct_1(arg_1.b.a, var_1.b);
    return -_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.a, 1i, abs(u_input.a), u_input.a) << (reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.b, var_0.b.b, arg_1.b.b, 0u), vec4<u32>(0u, arg_1.b.b, var_3.b, 47353u))) % vec4<u32>(32u)), ~min(vec4<i32>(16007i, -2147483647i, 1i, -2147483647i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), -vec4<i32>(-1i, u_input.a, 1i, u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = ~(vec4<i32>(reverseBits(arg_1), ~u_input.a | ~u_input.a, countOneBits(~arg_1), 3817i) & func_4(Struct_2(arg_0, arg_0.a.wyy, arg_0.a.x, func_3(Struct_3(Struct_1(arg_0.a, 67820u), vec4<i32>(u_input.a, 1i, arg_1, arg_1), vec2<i32>(4745i, arg_1), Struct_2(arg_0, arg_0.a.wyy, true, vec3<u32>(arg_0.b, 44195u, arg_0.b)), Struct_2(Struct_1(vec4<bool>(true, false, arg_0.a.x, false), arg_0.b), arg_0.a.xzz, false, vec3<u32>(1u, 1u, 4294967295u))))), Struct_4(any(vec4<bool>(arg_0.a.x, arg_3, arg_3, true)), Struct_1(arg_0.a, arg_0.b)), !select(true, false, arg_3), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 4294967295u) | vec2<u32>(40533u, 85008u), min(vec2<u32>(1323u, arg_0.b), vec2<u32>(0u, 11872u)))));
    var var_1 = 1i;
    var var_2 = ~_wgslsmith_sub_u32(abs(select(abs(arg_0.b), 1u, arg_0.a.x)), 4294967295u);
    var_2 = countOneBits(1u);
    var_1 = 2147483647i;
    return arg_0;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_2(func_2(Struct_1(vec4<bool>(true, true, true, true), ~1u), u_input.a, -1000f, true), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(20042u, 1u, 4294967295u, 4294967295u)) >= countOneBits(_wgslsmith_clamp_u32(select(0u, 0u, false), _wgslsmith_mult_u32(1u, 45741u), ~3716u)), firstTrailingBit(~firstTrailingBit(vec3<u32>(66226u, 1u, 18303u)) << (vec3<u32>(func_3(Struct_3(Struct_1(vec4<bool>(false, false, false, true), 34403u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(-14778i, 0i), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 1u), vec3<bool>(true, false, false), false, vec3<u32>(81053u, 4294967295u, 44610u)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 4294967295u), vec3<bool>(false, true, true), true, vec3<u32>(0u, 1u, 4294967295u)))).x, func_2(Struct_1(vec4<bool>(false, false, false, false), 0u), u_input.a, 257f, false).b, _wgslsmith_mod_u32(33606u, 4294967295u)) % vec3<u32>(32u))));
    var_0 = Struct_2(var_0.a, vec3<bool>((-u_input.a << (~1u % 32u)) == ~reverseBits(u_input.a), func_2(Struct_1(!vec4<bool>(var_0.c, var_0.c, true, false), _wgslsmith_div_u32(var_0.d.x, var_0.a.b)), _wgslsmith_clamp_i32(~33585i, abs(45470i), ~u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -893f), var_0.c).a.x, !(!var_0.c & var_0.b.x)), !any(var_0.a.a.zw), func_3(Struct_3(func_2(var_0.a, max(u_input.a, -1i), _wgslsmith_f_op_f32(f32(-1f) * -144f), all(var_0.b)), min(vec4<i32>(u_input.a, -35573i, u_input.a, -25196i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 1i, 1i), vec4<i32>(-2147483647i, 1i, u_input.a, 2147483647i))), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), Struct_2(Struct_1(vec4<bool>(true, var_0.a.a.x, false, false), 20062u), var_0.b, true, var_0.d), Struct_2(func_2(Struct_1(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), var_0.a.b), u_input.a, -2021f, var_0.c), vec3<bool>(var_0.c, false, var_0.c), !var_0.b.x, countOneBits(vec3<u32>(var_0.a.b, 0u, var_0.d.x))))));
    let var_1 = ~(~(~(~vec4<u32>(4450u, var_0.a.b, 0u, 1u) ^ ~vec4<u32>(var_0.a.b, var_0.a.b, 4294967295u, var_0.d.x))));
    var_0 = Struct_2(func_2(func_2(var_0.a, u_input.a, -2021f, (true & var_0.b.x) || true), _wgslsmith_div_i32(1i, ~(-1i) ^ u_input.a), _wgslsmith_f_op_f32(step(-1083f, _wgslsmith_f_op_f32(ceil(-823f)))), any(!(!var_0.a.a.wyx))), vec3<bool>(true, var_0.c, any(!(!vec4<bool>(var_0.b.x, false, var_0.c, false)))), any(select(vec4<bool>(false, true, false, var_0.a.a.x), vec4<bool>(var_0.a.a.x, var_0.c, true, true), vec4<bool>(var_0.b.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))) && true, ~vec3<u32>(_wgslsmith_dot_vec2_u32(~var_0.d.xz, ~vec2<u32>(0u, 4294967295u)), 93514u, abs(~var_0.a.b)));
    var var_2 = u_input.a;
    return vec2<i32>(u_input.a, i32(-1i) * -45322i);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(arg_2.a, vec3<bool>(arg_2.c, false, func_3(Struct_3(Struct_1(vec4<bool>(arg_2.a.a.x, false, false, false), arg_2.a.b), vec4<i32>(u_input.a, 1i, arg_0, arg_0), vec2<i32>(2147483647i, arg_0), arg_2, Struct_2(Struct_1(arg_2.a.a, 26982u), vec3<bool>(arg_3.x, arg_2.b.x, false), arg_2.a.a.x, arg_2.d))).x <= ((arg_2.a.b & arg_2.a.b) & 60944u)), !(false & !arg_2.b.x), arg_2.d);
    var_0 = Struct_2(Struct_1(var_0.a.a, ~(~min(61899u, var_0.a.b))), vec3<bool>(!any(!arg_2.b.zz), true, arg_2.b.x), any(var_0.a.a), vec3<u32>(var_0.d.x, ~98534u, 28531u));
    let var_1 = ~22233i;
    var_0 = Struct_2(Struct_1(arg_2.a.a, arg_2.a.b), !func_2(func_2(Struct_1(var_0.a.a, 10523u), firstTrailingBit(2147483647i), 1000f, !arg_3.x), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -1189f) - -911f), !(!arg_2.a.a.x)).a.xyz, false, vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4253u, 4294967295u), vec2<u32>(var_0.d.x, 1u)), vec2<u32>(~6068u, 4294967295u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(5119u, _wgslsmith_sub_u32(var_0.d.x, arg_2.d.x)), countOneBits(~0u)), arg_2.a.b));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(28762u, var_0.a.b << (~1u % 32u)), var_0.d.x) & arg_2.d.xy;
    return func_2(func_2(Struct_1(var_0.a.a, func_3(Struct_3(arg_2.a, vec4<i32>(-1i, 36235i, var_1, -3277i), vec2<i32>(2147483647i, 0i), Struct_2(arg_2.a, vec3<bool>(true, false, false), false, vec3<u32>(0u, arg_2.a.b, var_0.d.x)), arg_2)).x), var_1, 1000f, any(vec3<bool>(false, false, arg_3.x)) || arg_3.x), firstLeadingBit(reverseBits(~(-1i))), arg_1, all(!func_2(arg_2.a, u_input.a, _wgslsmith_f_op_f32(ceil(arg_1)), true).a.yw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_5(_wgslsmith_dot_vec2_i32(min(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, -1i)), func_1()), vec2<i32>(firstLeadingBit(u_input.a >> (2984u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 12540i), ~vec2<i32>(u_input.a, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-569f)) + 1625f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2120f)), -468f)))), Struct_2(func_2(func_2(Struct_1(vec4<bool>(var_0, true, var_0, var_0), 80047u), u_input.a, -391f, !var_0), abs(~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) + _wgslsmith_f_op_f32(f32(-1f) * -1651f)), true), vec3<bool>(true, false || var_0, false), !all(vec4<bool>(false, var_0, false, var_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), !(!(!(!vec3<bool>(true, var_0, true)))));
    var_1 = func_5(abs((-u_input.a | _wgslsmith_div_i32(u_input.a, u_input.a)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(9659u, 20125u, var_1.b, var_1.b), vec4<u32>(710u, var_1.b, var_1.b, var_1.b)) % 32u)), 525f, Struct_2(Struct_1(select(select(vec4<bool>(var_0, true, true, var_1.a.x), vec4<bool>(false, true, var_1.a.x, false), var_1.a.x), var_1.a, var_1.a.x), countOneBits(var_1.b ^ var_1.b)), vec3<bool>(false, !(!var_1.a.x), var_1.a.x), false, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1.b, var_1.b, var_1.b)), vec3<u32>(var_1.b, 4749u, 3067u) >> (vec3<u32>(1u, var_1.b, 65598u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 86449u, var_1.b), reverseBits(vec3<u32>(var_1.b, var_1.b, var_1.b)))), !var_1.a.wyw);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1010f, -545f, 1000f, 329f)))))));
    var_1 = Struct_1(select(var_1.a, func_2(func_5(-1i, _wgslsmith_f_op_f32(round(var_2.x)), Struct_2(Struct_1(vec4<bool>(var_0, false, var_0, var_0), var_1.b), var_1.a.yyx, var_1.a.x, vec3<u32>(var_1.b, var_1.b, 4294967295u)), var_1.a.zyz), select(min(u_input.a, u_input.a), u_input.a << (62325u % 32u), var_1.a.x), var_2.x, !any(var_1.a)).a, vec4<bool>(var_1.a.x, any(vec4<bool>(var_0, false, var_0, false)), all(vec3<bool>(true, true, false)) & true, false)), abs(var_1.b) ^ 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~2653u), ~(~abs(abs(vec2<u32>(31797u, 120647u)))));
}

