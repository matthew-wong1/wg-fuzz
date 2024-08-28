struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = false;
    let var_1 = arg_0.c;
    var var_2 = -_wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1, -17901i, 2147483647i, arg_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, -73713i, var_1, var_1), vec4<i32>(arg_0.c, -60808i, arg_0.c, arg_0.c))), _wgslsmith_add_vec4_i32(~(~vec4<i32>(var_1, -58119i, 1i, arg_0.c)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1, arg_0.c), vec3<i32>(var_1, 2147483647i, arg_0.c)), _wgslsmith_mod_i32(var_1, 1i), arg_0.c, -var_1)));
    var var_3 = ~_wgslsmith_sub_vec3_i32(-(~(var_2.wwz | var_2.wwy)), var_2.xzz);
    let var_4 = !vec4<bool>(false || var_0, false, var_0, any(arg_0.a.wyy));
    return select(false, arg_0.e, true);
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(vec4<bool>(any(vec3<bool>(true, true, true)), true, u_input.b.x == 35815u, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(true, 0u < ~u_input.a), firstTrailingBit(countOneBits(25163i)) << (44441u % 32u), true, !(u_input.a < u_input.a) || true), func_3(Struct_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), abs(2525i), all(vec3<bool>(true, false, false)), false)));
    var var_1 = Struct_1(~u_input.b.x, vec4<bool>(true, 4294967295u <= (u_input.b.x >> (max(u_input.a, 6031u) % 32u)), true, all(vec3<bool>(var_0.a.e, true, true)) | true), 1i, var_0.a.c, -(~select(~vec4<i32>(var_0.a.c, 40856i, var_0.a.c, 1i), vec4<i32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -1526f) - _wgslsmith_f_op_f32(-arg_0)));
    var_1 = Struct_1(4294967295u, var_0.a.a, var_0.a.c, firstTrailingBit(abs(-30057i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(70852u, 37017u, 0u, var_1.a), vec4<u32>(var_1.a, 272u, 0u, 0u)) % 32u))), vec4<i32>(~_wgslsmith_sub_i32(1i, abs(var_1.c)), -18784i, _wgslsmith_dot_vec3_i32(var_1.e.yzx, _wgslsmith_div_vec3_i32(~var_1.e.wyx, vec3<i32>(var_1.e.x, var_0.a.c, var_1.e.x))), -41682i));
    var_1 = Struct_1(u_input.b.x, var_0.a.a, _wgslsmith_mult_i32(-38821i, ~_wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.d, var_0.a.c), _wgslsmith_div_i32(11717i, -15442i))), var_1.d, var_1.e);
    return var_0.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec4<bool> {
    var var_0 = func_2(-1760f);
    var_0 = Struct_2(!var_0.a, vec2<bool>(!var_0.d, false | var_0.b.x), 2695i, true, false);
    var var_1 = firstTrailingBit(~arg_1.e);
    let var_2 = arg_1.e.yww;
    var var_3 = arg_0;
    return arg_0.a.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = min(28399i, 0i);
    var var_1 = min(-1i, -70664i);
    var var_2 = Struct_2(!arg_1.b, vec2<bool>(select(true, true, arg_1.b.x && true) | true, false), select(var_0, 0i | _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1.e.wxz, arg_1.e.wxz), _wgslsmith_sub_i32(2147483647i, arg_1.d)), true), arg_1.b.x, !(!(~2147483647i < abs(arg_1.e.x))));
    var_1 = 83199i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1569f)))));
    return Struct_2(select(vec4<bool>(func_2(766f).e, true, arg_1.b.x, _wgslsmith_clamp_u32(arg_0.x, arg_1.a, u_input.a) > 1u), arg_1.b, any(func_1(Struct_3(Struct_2(var_2.a, vec2<bool>(arg_1.b.x, var_2.d), -1i, false, arg_1.b.x), arg_1.b.x), Struct_1(arg_0.x, arg_1.b, 32534i, 25908i, vec4<i32>(var_2.c, var_2.c, var_2.c, -1i)), var_0, true).xy)), vec2<bool>((true | any(vec4<bool>(arg_1.b.x, var_2.a.x, true, false))) | select(all(vec4<bool>(var_2.a.x, false, false, true)), any(arg_1.b.zxw), true), !arg_1.b.x), arg_1.e.x, false, (true && arg_1.b.x) || true);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_3), -vec2<i32>(-1i, arg_0.c)) | abs(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_3), vec2<i32>(arg_3, arg_0.c)), 1i), arg_3));
    var_0 = vec2<i32>(-_wgslsmith_mod_i32(-1i, -28837i | (arg_3 << (arg_2 % 32u))), select(2147483647i, arg_3, false));
    var var_1 = Struct_2(select(arg_0.a, vec4<bool>(arg_0.b.x && arg_0.a.x, !(true & arg_0.a.x), arg_0.a.x, true), func_4(u_input.b, Struct_1(~u_input.b.x, select(arg_0.a, arg_0.a, vec4<bool>(arg_0.b.x, false, true, false)), 0i, ~53648i, vec4<i32>(arg_3, 0i, -50290i, arg_3))).a.x), func_4(vec2<u32>(arg_2, firstTrailingBit(abs(4294967295u))), Struct_1(73309u, !func_2(arg_1).a, var_0.x >> (1u % 32u), _wgslsmith_div_i32(~var_0.x, 0i), vec4<i32>(~arg_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, -33231i), vec2<i32>(arg_3, var_0.x)), var_0.x, 1i))).a.yz, func_4(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, arg_2, 18697u, 100060u), vec4<u32>(64716u, 4294967295u, 4294967295u, u_input.a), true), ~vec4<u32>(57282u, arg_2, 0u, arg_2))), Struct_1(u_input.b.x, !func_4(u_input.b, Struct_1(1u, vec4<bool>(false, true, true, arg_0.b.x), 62040i, -2147483647i, vec4<i32>(2147483647i, arg_3, 2147483647i, -16072i))).a, -1i, 2147483647i, select(vec4<i32>(arg_3, var_0.x, arg_3, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(9915i, arg_0.c, arg_0.c, arg_0.c), vec4<i32>(-9093i, var_0.x, var_0.x, 1i)), func_3(arg_0)))).c, arg_0.d, !any(arg_0.a.wzz));
    let var_2 = false;
    let var_3 = -25203i;
    return Struct_1(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, 19856u)), vec3<u32>(11856u, 1u, 4294967295u) >> (vec3<u32>(arg_2, u_input.b.x, 54265u) % vec3<u32>(32u))), !(!var_1.a), countOneBits(~(i32(-1i) * -10081i)), -2147483647i, vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, 0i, -41966i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.c, -733i), vec3<i32>(arg_0.c, var_3, arg_0.c))), var_0.x, abs(arg_0.c), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec2<u32>(1u, 16371u) | select(vec2<u32>(u_input.a, 12929u), ~u_input.b, vec2<bool>(true, true)), Struct_1(1u, select(func_1(Struct_3(Struct_2(vec4<bool>(false, true, false, true), vec2<bool>(false, false), -2147483647i, false, false), true), Struct_1(u_input.b.x, vec4<bool>(true, true, false, true), -8182i, 2147483647i, vec4<i32>(16273i, 42613i, 0i, -36633i)), 51972i, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false))), 1i, -abs(-66771i), vec4<i32>(reverseBits(0i), 1578i, 0i, i32(-1i) * -5052i))), 2324f, 48137u, -20746i);
    var_0 = Struct_1(~var_0.a, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1354f * -1000f)))))).a, max(-2147483647i, _wgslsmith_div_i32(0i, abs(-2147483647i))) | func_4(vec2<u32>(firstTrailingBit(u_input.b.x), 4294967295u), func_5(func_4(u_input.b, Struct_1(var_0.a, vec4<bool>(false, var_0.b.x, false, true), var_0.e.x, var_0.e.x, var_0.e)), _wgslsmith_f_op_f32(ceil(-580f)), ~var_0.a, var_0.c << (var_0.a % 32u))).c, _wgslsmith_sub_i32(min(var_0.e.x >> (~var_0.a % 32u), 27525i), func_2(1f).c | min(_wgslsmith_div_i32(var_0.d, var_0.d), -var_0.c)), var_0.e);
    let var_1 = var_0.b;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(51506u, 50650u, var_0.a), firstTrailingBit(vec3<u32>(4294967295u, var_0.a, 75536u))), vec3<u32>(var_0.a, ~u_input.a, ~4294967295u)), !var_0.b, ~(-3819i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, min(var_0.c, 26762i)), _wgslsmith_mult_vec2_i32(var_0.e.zx, vec2<i32>(var_0.c, -9960i))), var_0.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-reverseBits(var_0.c), ~var_0.e.x, i32(-1i) * -var_0.c, _wgslsmith_add_i32(var_0.e.x, -15877i | var_0.c)), ~firstTrailingBit(vec4<i32>(var_0.d, -1i, var_0.d, 1i))));
    let var_3 = !var_2.b.zwy;
    let var_4 = func_4(countOneBits(u_input.b), var_2);
    let var_5 = vec3<i32>(-2147483647i, ~(-(~31247i)), var_0.d);
    let var_6 = func_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f * -667f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f + 415f) * _wgslsmith_div_f32(1542f, -869f))), 628f)), ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17869u, var_0.a), vec2<u32>(u_input.a, u_input.a)), var_0.a)), _wgslsmith_sub_i32(-12782i, -1i)).b.zxy;
    var var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-984f, 1042f, 131f, 405f) - vec4<f32>(639f, -1410f, -383f, 105f)), vec4<f32>(310f, 1453f, 1044f, 985f), false)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1593f, -1000f, 1480f, 1132f))) + vec4<f32>(448f, -1908f, 149f, -1093f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_7.x + _wgslsmith_f_op_f32(var_7.x - _wgslsmith_f_op_f32(min(-649f, -827f)))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 1i, 727i), var_2.e.yxy), _wgslsmith_add_u32(~60168u, ~min(~1u, _wgslsmith_sub_u32(u_input.b.x, 12641u))), 0i, abs(vec4<u32>(var_2.a, ~74079u, ~var_2.a ^ ~4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.a, u_input.a), vec3<u32>(var_0.a, u_input.b.x, 31199u)))));
}

