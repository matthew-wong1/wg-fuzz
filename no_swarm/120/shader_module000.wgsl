struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec3<u32> {
    let var_0 = abs(firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(u_input.a, select(vec4<i32>(-1i, u_input.a.x, -6702i, u_input.a.x), vec4<i32>(0i, 31249i, 6738i, u_input.a.x), vec4<bool>(true, true, false, true)), any(vec4<bool>(false, true, false, true))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -23579i, u_input.a.x, u_input.a.x), u_input.a), u_input.a)));
    let var_1 = 0u;
    let var_2 = var_0.zx;
    var var_3 = false;
    var_3 = true;
    return ~select(vec3<u32>(arg_1, countOneBits(~var_1), select(arg_1, arg_1, all(vec2<bool>(true, true)))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(49137u, arg_1), var_1 ^ var_1), abs(abs(27176u)), firstLeadingBit(var_1)), vec3<bool>(!any(vec4<bool>(true, false, false, true)), true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~max(vec3<u32>(4294967295u, arg_2.a.x, _wgslsmith_clamp_u32(arg_2.a.x, arg_1.c, arg_1.c)), min(abs(arg_0.b.ywy) >> (arg_1.a % vec3<u32>(32u)), arg_0.b.zxw));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-404f, _wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + -1202f);
    var_0 = arg_1.a;
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), reverseBits(var_0.x)), ~arg_0.b.www), func_3(var_1, reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, arg_0.c), arg_1.c))));
    let var_2 = vec4<u32>(arg_0.b.x, arg_1.c, func_3(_wgslsmith_f_op_f32(trunc(982f)), arg_0.c | 1u).x, countOneBits(firstLeadingBit(_wgslsmith_mult_u32(4294967295u, arg_0.c))) & 4294967295u);
    return ~arg_0.b.xxz;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(firstLeadingBit(func_4(Struct_1(min(vec3<u32>(39330u, 54420u, 1u), vec3<u32>(61870u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), ~4294967295u, min(-12072i, u_input.a.x)), Struct_1(vec3<u32>(1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~0u, u_input.a.x), Struct_1(func_3(-1575f, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~1480u, u_input.a.x))), vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6453u, 4294967295u), vec2<u32>(0u, 4294967295u)), ~4294967295u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 75368u), vec2<u32>(1u, 0u)), 1u) & ~vec4<u32>(1u, 1u, 1u, 1u), func_4(Struct_1(vec3<u32>(~1u, _wgslsmith_mult_u32(0u, 1u), 1u), ~vec4<u32>(1u, 0u, 85305u, 82921u), ~4294967295u, i32(-1i) * -1i), Struct_1(min(~vec3<u32>(1u, 0u, 73038u), vec3<u32>(1u, 1u, 1u)), ~(~vec4<u32>(4294967295u, 0u, 0u, 1u)), 0u, -1i), Struct_1(vec3<u32>(1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~35756u, 1i)).x, -1i);
    let var_1 = Struct_1(var_0.a, vec4<u32>(46505u, ~1u, 26963u, var_0.a.x & var_0.c), ~(var_0.a.x ^ _wgslsmith_sub_u32(var_0.a.x, var_0.a.x)) ^ (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.a.zx, vec2<u32>(var_0.b.x, var_0.b.x)), var_0.a.x) | select(var_0.b.x ^ 0u, var_0.b.x, true)), u_input.a.x);
    var var_2 = var_0;
    var_2 = Struct_1(~max(max(vec3<u32>(0u, var_2.a.x, var_1.a.x), vec3<u32>(var_1.c, var_1.a.x, 4294967295u)) << (abs(var_1.b.yzz) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(var_0.a << (vec3<u32>(43713u, 1u, var_2.c) % vec3<u32>(32u)), vec3<u32>(var_2.a.x, var_2.c, var_1.a.x))), vec4<u32>((4294967295u >> (var_0.a.x % 32u)) << (var_1.c % 32u), var_2.c, func_3(_wgslsmith_f_op_f32(abs(-265f)), 6818u).x, 0u), ~func_4(var_1, var_0, var_0).x, var_1.d);
    let var_3 = _wgslsmith_f_op_f32(341f - _wgslsmith_f_op_f32(abs(157f)));
    return 81352u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = any(select(vec2<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(11558i, arg_0.d, arg_3.d), vec3<i32>(31436i, arg_2.d, 1i)) != _wgslsmith_mult_i32(arg_2.d, 2147483647i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), any(vec4<bool>(false, false, true, false))), all(vec2<bool>(true, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_2() == ~arg_1)));
    let var_1 = -434f;
    var var_2 = arg_2;
    var var_3 = Struct_1(firstTrailingBit(arg_3.b.wwy << (~countOneBits(var_2.a) % vec3<u32>(32u))), select(~min(arg_2.b, vec4<u32>(4294967295u, arg_2.a.x, arg_0.a.x, 66946u)) & ~var_2.b, _wgslsmith_div_vec4_u32(arg_3.b, ~arg_3.b), select(vec4<bool>(false, !var_0, var_0, select(false, var_0, var_0)), select(vec4<bool>(var_0, var_0, true, var_0), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), var_0), var_0), all(vec4<bool>(false, false, true, true)) & !var_0)), ~_wgslsmith_add_u32(0u, 1u | arg_3.a.x), i32(-1i) * -19393i);
    var var_4 = arg_0.d;
    return Struct_1(func_3(var_1, countOneBits(~arg_3.b.x)), max(vec4<u32>(arg_2.a.x, 1u, ~_wgslsmith_mod_u32(var_3.a.x, arg_0.b.x), 17388u), ~(~(~var_3.b))), 13415u, ~arg_3.d);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = func_1(func_1(Struct_1(abs(select(vec3<u32>(arg_1.a.x, 4294967295u, arg_1.c), vec3<u32>(arg_1.a.x, 4294967295u, 34891u), vec3<bool>(true, false, true))), vec4<u32>(_wgslsmith_add_u32(arg_1.b.x, 12635u), 74343u << (0u % 32u), _wgslsmith_mult_u32(17604u, arg_1.c), 477u), 0u, -abs(-76579i)), ~(~4320u), arg_1, Struct_1(vec3<u32>(arg_1.c | arg_1.c, ~arg_1.b.x, 1u), arg_1.b, ~arg_1.b.x, reverseBits(-u_input.a.x))), func_3(1588f, ~4294967295u).x, Struct_1(_wgslsmith_sub_vec3_u32(~arg_1.a | func_1(arg_1, arg_1.a.x, arg_1, Struct_1(vec3<u32>(arg_1.c, 34567u, 0u), arg_1.b, arg_1.a.x, arg_1.d)).a, vec3<u32>(44282u, 1003u, _wgslsmith_dot_vec3_u32(arg_1.a, arg_1.b.zwz))), arg_1.b, 4294967295u, func_1(func_1(func_1(Struct_1(vec3<u32>(arg_1.b.x, arg_1.c, 1248u), arg_1.b, 15242u, -52354i), arg_1.a.x, Struct_1(vec3<u32>(arg_1.b.x, 37779u, arg_1.c), vec4<u32>(arg_1.c, 0u, arg_1.b.x, 4294967295u), 1u, arg_0), Struct_1(arg_1.b.xww, vec4<u32>(4294967295u, 0u, 42315u, arg_1.b.x), arg_1.c, -18414i)), arg_1.b.x, Struct_1(arg_1.a, arg_1.b, arg_1.b.x, u_input.a.x), Struct_1(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.a.x), arg_1.b, arg_1.a.x, 1i)), 60306u, arg_1, arg_1).d), arg_1);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, _wgslsmith_div_f32(1162f, arg_2)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1107f, -699f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2, var_1.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(trunc(arg_2)), arg_2), vec3<f32>(_wgslsmith_f_op_f32(arg_2 - -861f), -1000f, _wgslsmith_f_op_f32(trunc(arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2873f, -107f, -1485f)))))));
    var var_4 = abs(30407u);
    return ~(~14815u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~vec3<u32>(1u, 42316u, 1u)), ~(~vec4<u32>(1u, _wgslsmith_add_u32(781u, 61604u), 1u, 1u)), max(~4294967295u, max(~_wgslsmith_sub_u32(4294967295u, 1u), func_5(u_input.a.x, func_1(Struct_1(vec3<u32>(4132u, 19743u, 67734u), vec4<u32>(1u, 22740u, 1u, 0u), 65730u, -17898i), 26113u, Struct_1(vec3<u32>(1u, 96755u, 14822u), vec4<u32>(0u, 4294967295u, 18194u, 21617u), 0u, 0i), Struct_1(vec3<u32>(49833u, 13883u, 1u), vec4<u32>(45182u, 1u, 1u, 1u), 4294967295u, -30209i)), _wgslsmith_f_op_f32(round(413f))))), u_input.a.x);
    var var_1 = func_1(func_1(func_1(func_1(Struct_1(vec3<u32>(4294967295u, var_0.c, 1u), var_0.b, var_0.a.x, 20867i), 21051u ^ var_0.b.x, Struct_1(var_0.b.zxz, vec4<u32>(4294967295u, 0u, var_0.b.x, var_0.b.x), var_0.a.x, -44869i), func_1(Struct_1(vec3<u32>(var_0.b.x, 4294967295u, 46556u), vec4<u32>(7069u, var_0.c, var_0.b.x, 0u), 1u, u_input.a.x), var_0.c, Struct_1(var_0.a, var_0.b, 4294967295u, var_0.d), Struct_1(vec3<u32>(4294967295u, var_0.a.x, var_0.c), vec4<u32>(27838u, 55955u, var_0.c, 34795u), 19227u, 9579i))), 0u, Struct_1(vec3<u32>(4294967295u, 0u, 68100u), vec4<u32>(var_0.a.x, var_0.c, 4294967295u, 4294967295u), ~1u, u_input.a.x & -1i), func_1(Struct_1(var_0.b.zyw, vec4<u32>(var_0.b.x, 54159u, var_0.c, var_0.a.x), 1u, var_0.d), select(4294967295u, var_0.c, true), Struct_1(vec3<u32>(var_0.a.x, 28856u, var_0.b.x), var_0.b, 42942u, u_input.a.x), Struct_1(var_0.b.yzz, var_0.b, 97962u, 67359i))), 1u, Struct_1(vec3<u32>(61953u, ~30533u, ~79126u), vec4<u32>(_wgslsmith_mult_u32(0u, var_0.a.x), 1u, ~var_0.a.x, ~var_0.b.x), _wgslsmith_add_u32(var_0.a.x, firstTrailingBit(4294967295u)), -1i), func_1(func_1(Struct_1(vec3<u32>(var_0.b.x, 0u, var_0.c), vec4<u32>(var_0.b.x, 4294967295u, 0u, 1u), 0u, var_0.d), reverseBits(var_0.a.x), Struct_1(var_0.b.wyz, var_0.b, 33762u, u_input.a.x), func_1(Struct_1(var_0.a, var_0.b, var_0.b.x, u_input.a.x), 7821u, Struct_1(vec3<u32>(1u, 55226u, var_0.c), vec4<u32>(4294967295u, 45762u, var_0.b.x, var_0.c), var_0.a.x, -45289i), Struct_1(vec3<u32>(4294967295u, var_0.c, 25779u), var_0.b, 63426u, var_0.d))), 1u, func_1(func_1(Struct_1(vec3<u32>(47037u, var_0.c, 4294967295u), vec4<u32>(68170u, var_0.b.x, 0u, 4294967295u), var_0.a.x, u_input.a.x), 1u, Struct_1(vec3<u32>(var_0.c, 15492u, 1u), vec4<u32>(4294967295u, 20086u, 0u, 61997u), var_0.a.x, u_input.a.x), Struct_1(var_0.a, vec4<u32>(var_0.a.x, var_0.a.x, 15602u, 0u), 4294967295u, 67364i)), select(var_0.c, var_0.b.x, true), func_1(Struct_1(vec3<u32>(1u, var_0.c, var_0.b.x), vec4<u32>(var_0.a.x, var_0.a.x, var_0.b.x, 4294967295u), 73437u, 2147483647i), 0u, Struct_1(var_0.a, var_0.b, var_0.c, u_input.a.x), Struct_1(vec3<u32>(var_0.a.x, 1u, 21296u), vec4<u32>(var_0.c, var_0.a.x, 56310u, 35924u), var_0.c, u_input.a.x)), Struct_1(vec3<u32>(13428u, 33360u, var_0.b.x), var_0.b, 22540u, 1i)), func_1(Struct_1(var_0.a, var_0.b, 55704u, 52827i), _wgslsmith_mult_u32(var_0.c, var_0.a.x), func_1(Struct_1(var_0.b.zxy, var_0.b, var_0.a.x, u_input.a.x), var_0.c, Struct_1(var_0.a, var_0.b, 64704u, var_0.d), Struct_1(var_0.a, vec4<u32>(0u, var_0.a.x, var_0.a.x, var_0.b.x), var_0.a.x, u_input.a.x)), func_1(Struct_1(vec3<u32>(102673u, 43247u, 1u), var_0.b, var_0.c, -18505i), var_0.c, Struct_1(vec3<u32>(var_0.c, var_0.b.x, var_0.b.x), vec4<u32>(var_0.a.x, 19125u, var_0.c, var_0.c), var_0.b.x, -5061i), Struct_1(var_0.a, vec4<u32>(var_0.c, 4806u, 1u, var_0.b.x), 1u, 0i))))), ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b.x, var_0.a.x), var_0.a.x)), func_1(Struct_1(vec3<u32>(var_0.a.x, ~var_0.b.x, max(var_0.b.x, 18409u)), func_1(func_1(Struct_1(vec3<u32>(59982u, 81913u, 1u), var_0.b, var_0.b.x, -2147483647i), var_0.b.x, Struct_1(vec3<u32>(31993u, 44273u, var_0.b.x), var_0.b, var_0.a.x, var_0.d), Struct_1(vec3<u32>(var_0.b.x, 1u, 0u), var_0.b, var_0.c, 1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 34807u), vec2<u32>(var_0.b.x, var_0.a.x)), Struct_1(vec3<u32>(var_0.b.x, 35215u, 1u), var_0.b, 4294967295u, 0i), Struct_1(vec3<u32>(6753u, var_0.c, 11447u), var_0.b, 11889u, var_0.d)).b, countOneBits(1u), _wgslsmith_mod_i32(countOneBits(8848i), var_0.d)), var_0.b.x, Struct_1(select(var_0.b.xxx, var_0.a, vec3<bool>(true, true, false)), var_0.b, firstTrailingBit(1u), -20205i), func_1(Struct_1(~vec3<u32>(var_0.a.x, 1u, var_0.b.x), vec4<u32>(var_0.a.x, var_0.b.x, var_0.a.x, var_0.c) | var_0.b, var_0.b.x >> (var_0.c % 32u), -27439i), func_1(Struct_1(vec3<u32>(30323u, 4294967295u, var_0.c), vec4<u32>(87561u, 1u, var_0.c, var_0.b.x), var_0.c, 37897i), var_0.a.x, Struct_1(vec3<u32>(1u, var_0.b.x, 122213u), vec4<u32>(var_0.c, var_0.c, var_0.b.x, var_0.a.x), var_0.a.x, 64933i), Struct_1(vec3<u32>(var_0.c, 39521u, 4294967295u), vec4<u32>(var_0.b.x, var_0.c, var_0.a.x, var_0.c), 1u, u_input.a.x)).a.x | 41861u, Struct_1(vec3<u32>(var_0.c, 4294967295u, 19053u), var_0.b >> (var_0.b % vec4<u32>(32u)), firstLeadingBit(var_0.c), u_input.a.x), Struct_1(select(var_0.a, vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, false)), reverseBits(var_0.b), ~0u, ~(-27527i)))), func_1(func_1(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, var_0.c), var_0.b.xyy), _wgslsmith_clamp_vec4_u32(vec4<u32>(14066u, 74379u, var_0.b.x, 20808u), vec4<u32>(30490u, 4294967295u, var_0.c, 77953u), vec4<u32>(20824u, 46776u, 41761u, var_0.a.x)), 32369u, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), select(var_0.b.x, var_0.c, true), func_1(func_1(Struct_1(var_0.b.xwz, vec4<u32>(17645u, var_0.a.x, var_0.c, 23178u), 52150u, var_0.d), var_0.c, Struct_1(vec3<u32>(4294967295u, 21937u, 10593u), var_0.b, var_0.c, u_input.a.x), Struct_1(var_0.a, var_0.b, var_0.c, u_input.a.x)), ~var_0.c, Struct_1(vec3<u32>(46668u, var_0.b.x, 49882u), var_0.b, var_0.a.x, u_input.a.x), Struct_1(vec3<u32>(4294967295u, var_0.b.x, var_0.a.x), vec4<u32>(1u, 4294967295u, var_0.c, var_0.c), 11865u, var_0.d)), func_1(Struct_1(var_0.b.xyw, var_0.b, var_0.c, -33469i), 0u, func_1(Struct_1(vec3<u32>(0u, 0u, var_0.c), var_0.b, var_0.b.x, 23822i), 0u, Struct_1(var_0.a, var_0.b, var_0.c, -49963i), Struct_1(vec3<u32>(var_0.a.x, var_0.b.x, var_0.c), vec4<u32>(var_0.c, var_0.c, 55854u, var_0.c), 4294967295u, var_0.d)), func_1(Struct_1(vec3<u32>(var_0.c, 4294967295u, 12434u), var_0.b, 0u, -47879i), var_0.c, Struct_1(var_0.b.wzy, vec4<u32>(12607u, 50339u, var_0.c, var_0.b.x), 4294967295u, var_0.d), Struct_1(var_0.b.wyx, var_0.b, var_0.a.x, var_0.d)))), ~(~func_2()), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.b.x, 4294967295u), firstLeadingBit(vec3<u32>(4294967295u, 67491u, var_0.c)), var_0.b.wwx), ~(var_0.b | vec4<u32>(var_0.b.x, var_0.b.x, 4294967295u, 1u)), 6942u, u_input.a.x), Struct_1(~vec3<u32>(161813u, 0u, 58261u) << (vec3<u32>(4294967295u, 1u, var_0.c) % vec3<u32>(32u)), select(select(vec4<u32>(var_0.c, var_0.b.x, 4294967295u, 0u), vec4<u32>(1u, var_0.a.x, var_0.a.x, 4294967295u), false), select(vec4<u32>(57231u, var_0.a.x, var_0.c, 27174u), vec4<u32>(0u, var_0.a.x, var_0.b.x, 0u), false), true), 4294967295u, var_0.d)));
    var var_2 = !(_wgslsmith_add_u32(~(2923u >> (0u % 32u)), 958u >> (~var_0.c % 32u)) == ~(~46150u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(172f, 248f) * vec2<f32>(1211f, -370f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1069f, 2271f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f - 385f)))));
    let var_4 = ~(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(func_4(Struct_1(var_0.b.zww, vec4<u32>(1u, var_1.a.x, 4294967295u, 8150u), 49067u, -1i), Struct_1(vec3<u32>(16738u, var_1.a.x, var_0.c), vec4<u32>(4294967295u, 60916u, var_0.a.x, 1u), 98592u, u_input.a.x), Struct_1(vec3<u32>(var_1.c, 62036u, 17071u), vec4<u32>(41263u, 1u, 57456u, var_0.b.x), var_0.b.x, u_input.a.x)), var_0.b.zzz, ~var_1.b.wzw)));
    let var_5 = func_1(Struct_1(~vec3<u32>(func_3(var_3.x, var_1.c).x, 4685u, var_4.x), vec4<u32>(~(~5868u), ~func_5(-1i, Struct_1(vec3<u32>(9869u, 0u, 26659u), vec4<u32>(var_4.x, var_1.b.x, var_1.b.x, var_4.x), var_1.c, var_1.d), -1781f), 1u, ~(~104501u)), ~_wgslsmith_add_u32(func_1(Struct_1(var_0.b.xxy, vec4<u32>(var_0.c, var_4.x, 0u, var_4.x), 70826u, u_input.a.x), var_1.b.x, Struct_1(vec3<u32>(var_0.a.x, 4294967295u, 0u), var_1.b, 4294967295u, var_1.d), Struct_1(vec3<u32>(4294967295u, var_1.b.x, var_4.x), vec4<u32>(var_1.b.x, var_1.b.x, 0u, var_1.b.x), var_0.a.x, -2147483647i)).c, abs(var_0.a.x)), -(~(u_input.a.x ^ var_1.d))), ~var_1.c, Struct_1(vec3<u32>(var_4.x & ~var_1.a.x, 72687u, var_4.x), select(~var_1.b, vec4<u32>(1u, var_0.a.x, 36754u, 21690u), vec4<bool>(false, false, true, true)) | (vec4<u32>(44382u, 4094u, 4294967295u, var_1.c) >> (vec4<u32>(var_1.c, var_4.x, 12086u, var_1.b.x) % vec4<u32>(32u))), 15561u, 1i), Struct_1(_wgslsmith_sub_vec3_u32(~(~var_1.a), ~vec3<u32>(58461u, var_0.a.x, 70307u)), vec4<u32>(abs(~0u), _wgslsmith_add_u32(func_1(Struct_1(var_1.b.zwy, var_0.b, var_1.b.x, -2147483647i), 66853u, Struct_1(vec3<u32>(var_4.x, var_4.x, 3774u), vec4<u32>(0u, var_4.x, 0u, var_1.b.x), var_4.x, 4553i), Struct_1(vec3<u32>(20407u, var_0.b.x, 1u), var_1.b, 1u, var_0.d)).b.x, 1u), firstLeadingBit(var_1.a.x), 44578u), var_1.a.x, select(var_0.d | u_input.a.x, u_input.a.x, true)));
    var_1 = func_1(var_5, func_5(30239i, var_5, var_3.x), Struct_1(var_5.a, ~firstTrailingBit(min(vec4<u32>(49765u, var_5.a.x, 1u, var_0.b.x), var_0.b)), 30077u, var_1.d), Struct_1(_wgslsmith_mod_vec3_u32(~(~var_5.b.wxx), ~(vec3<u32>(var_1.b.x, var_5.a.x, var_5.a.x) | vec3<u32>(var_5.c, var_5.b.x, var_5.a.x))), _wgslsmith_mult_vec4_u32(select(firstTrailingBit(var_0.b), vec4<u32>(3625u, var_1.c, 0u, var_5.a.x), true), vec4<u32>(~var_0.c, var_1.a.x, 0u & var_1.a.x, var_1.b.x)), func_2(), -21622i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(reverseBits(var_1.d), u_input.a.x & 57009i, ~u_input.a.x)), var_3.x, 0u, 575f, func_4(var_5, var_5, Struct_1(vec3<u32>(min(42415u, var_1.c), ~109356u, ~var_0.c), var_0.b, 35095u, _wgslsmith_add_i32(~var_0.d, select(-37661i, var_0.d, true)))).x);
}

