struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = 1i;
    let var_2 = ~(~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 48542u), vec2<u32>(38033u, 61388u)), abs(89657u), 38853u)));
    var var_3 = arg_0.a.x;
    global0 = arg_0;
    return !any(vec2<bool>(true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_2(arg_1, arg_1.a.x, vec4<bool>(true, arg_2, !(true & (arg_1.a.x < arg_1.a.x)), !arg_0), arg_1, arg_2);
    let var_1 = Struct_1(var_0.d.a);
    let var_2 = var_0.c;
    return Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.x, 26651i, var_1.a.x), vec3<i32>(12128i, -18911i, var_0.d.a.x)) >> (~1u % 32u), 0i, var_1.a.x, 1i), func_3(var_1), (func_3(var_1) & true) && true);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_2 {
    global0 = Struct_1(arg_3.a.xy);
    global0 = Struct_1(min(-global0.a, abs(firstTrailingBit(select(vec2<i32>(arg_1.a.x, global0.a.x), vec2<i32>(-6452i, 2147483647i), arg_2.zw)))));
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.a.x, -1i), arg_3.a.xy) & firstTrailingBit(vec2<i32>(-49466i, global0.a.x)), vec2<i32>(min(10621i, arg_1.a.x), i32(-1i) * -18038i)), select(~arg_3.a.xy, vec2<i32>(~arg_3.a.x, firstLeadingBit(2915i)), !(!arg_2.zy))) ^ reverseBits(vec2<i32>(_wgslsmith_mod_i32(abs(-27871i), -60451i), _wgslsmith_mod_i32(-2147483647i, u_input.a)));
    global0 = Struct_1(~arg_1.a.wz | ~(-vec2<i32>(var_0.x, -72681i) & (vec2<i32>(arg_3.a.x, u_input.a) & vec2<i32>(global0.a.x, -2147483647i))));
    var var_1 = select(arg_2.wx, arg_2.xx, all(select(vec2<bool>(arg_2.x, any(vec4<bool>(arg_1.b, arg_1.c, false, false))), arg_2.zz, select(select(vec2<bool>(arg_3.b, arg_0), vec2<bool>(false, true), vec2<bool>(false, arg_2.x)), !vec2<bool>(true, arg_0), all(arg_2)))));
    return Struct_2(Struct_1(select(vec2<i32>(var_0.x, abs(arg_3.a.x)), arg_1.a.yy, arg_2.zz)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a.x, (arg_3.a.x | u_input.a) ^ (var_0.x >> (13967u % 32u)), -15942i), vec3<i32>(-1i) * -arg_3.a.wxz), !(!select(!arg_2, select(vec4<bool>(true, false, true, true), arg_2, vec4<bool>(var_1.x, arg_2.x, arg_1.c, false)), select(vec4<bool>(arg_1.c, var_1.x, arg_3.c, true), arg_2, false))), Struct_1(-(~vec2<i32>(global0.a.x, -46411i) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), true);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(true, func_4(any(arg_1.c.zyx), Struct_3(vec4<i32>(-1i, -7866i, _wgslsmith_mod_i32(u_input.a, global0.a.x), arg_1.b), true, arg_1.c.x), vec4<bool>(all(!vec4<bool>(arg_1.e, true, true, arg_1.e)), arg_0 | false, true, arg_1.e), Struct_3(-firstTrailingBit(vec4<i32>(global0.a.x, 8725i, arg_1.d.a.x, 1i)), false | all(vec4<bool>(arg_0, arg_0, true, true)), select(true, all(arg_1.c.wzz), true))).a, ~abs(~arg_2.x) < ~1u);
    global0 = Struct_1(var_0.a.yx);
    var var_1 = -1000f;
    var var_2 = Struct_1(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_sub_i32(var_0.a.x, -2147483647i)), vec2<i32>(global0.a.x, global0.a.x) >> (arg_2 % vec2<u32>(32u)))));
    var_2 = func_4(true & arg_0, func_2(true, func_4((u_input.a >= global0.a.x) && true, func_2(all(arg_1.c.wwz), arg_1.a, true), vec4<bool>(arg_1.e, false, !arg_1.c.x, true), func_2(false, Struct_1(vec2<i32>(15784i, global0.a.x)), var_0.c)).d, true), !select(select(arg_1.c, !arg_1.c, true), func_4(true, Struct_3(vec4<i32>(global0.a.x, -9669i, u_input.a, 1i), arg_0, var_0.c), !arg_1.c, Struct_3(var_0.a, arg_0, false)).c, false), Struct_3(countOneBits(vec4<i32>(firstTrailingBit(var_2.a.x), -2147483647i ^ var_2.a.x, u_input.a, arg_1.a.a.x)), true, !(!var_0.b) & arg_0)).d;
    return arg_1.d;
}

fn func_1() -> vec2<i32> {
    global0 = func_5(false, func_4(true, func_2((15897i < u_input.a) | true, Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global0.a.x), vec2<i32>(u_input.a, 0i), vec2<i32>(-1i, 2147483647i))), true), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -11771i, 0i, global0.a.x) >> (vec4<u32>(4294967295u, 50922u, 38026u, 23336u) % vec4<u32>(32u)), vec4<i32>(global0.a.x, -38569i, 26572i, 1i) & vec4<i32>(global0.a.x, 2147483647i, global0.a.x, 2147483647i)), true, all(vec3<bool>(false, true, false)) | false)), vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 13462u, 14308u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(30006u, 4294967295u, 1u)))), 4294967295u));
    var var_0 = func_4(true, Struct_3(_wgslsmith_sub_vec4_i32((vec4<i32>(-2147483647i, 23608i, 43464i, u_input.a) ^ vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)) << (vec4<u32>(8779u, 1u, 1u, 0u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(global0.a.x, global0.a.x, -41693i, 0i))), true, any(select(func_4(false, Struct_3(vec4<i32>(2147483647i, u_input.a, global0.a.x, 1i), true, true), vec4<bool>(false, true, true, true), Struct_3(vec4<i32>(u_input.a, -56882i, -36704i, global0.a.x), false, false)).c.ywz, vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), !(!vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true)), Struct_3(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(1i, u_input.a)), global0.a.x | 1i), _wgslsmith_mult_i32(u_input.a & 2147483647i, countOneBits(u_input.a)), global0.a.x, abs(-1i)), (countOneBits(global0.a.x) != _wgslsmith_mult_i32(-40881i, -1i)) | (~8503u > _wgslsmith_clamp_u32(43082u, 0u, 4294967295u)), false));
    global0 = var_0.d;
    let var_1 = _wgslsmith_sub_u32(1u, 1u);
    let var_2 = var_0.a;
    return ~select(func_4(var_0.c.x, Struct_3(-vec4<i32>(var_2.a.x, global0.a.x, u_input.a, global0.a.x), true, func_2(true, var_0.d, false).b), !(!vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.e)), func_2(true, var_0.a, var_0.c.x)).a.a, -vec2<i32>(~39795i, i32(-1i) * -2147483647i), func_4(true, Struct_3(vec4<i32>(var_2.a.x, global0.a.x, 12663i, u_input.a) | vec4<i32>(0i, -2147483647i, var_2.a.x, 2147483647i), true, var_0.e), vec4<bool>(var_0.c.x, false, !var_0.e, true), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, var_0.b, var_0.b, 2147483647i), vec4<i32>(var_0.d.a.x, var_2.a.x, 17099i, global0.a.x)), true, var_0.c.x)).c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-max(global0.a, global0.a) | func_1());
    global0 = func_5(false, func_4(false, Struct_3(vec4<i32>(-1i) * -vec4<i32>(39225i, global0.a.x, -2147483647i, -28231i), true, true), !vec4<bool>(false, true, any(vec4<bool>(false, false, true, true)), true), Struct_3(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(global0.a.x, u_input.a, 1i, global0.a.x)), ~vec4<i32>(-1i, global0.a.x, 0i, 1i)), true, true)), ~vec2<u32>(1u, 1u));
    global0 = Struct_1(~global0.a);
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(-vec4<i32>(-29266i, reverseBits(global0.a.x), -8686i, _wgslsmith_sub_i32(19684i, -25509i)), vec4<i32>(-1i) * -func_2(false, Struct_1(vec2<i32>(-29619i, u_input.a)), false).a), any(vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), func_3(Struct_1(vec2<i32>(global0.a.x, 34632i))))), true);
    global0 = func_5(func_3(func_4(func_2(!var_0.b, func_5(var_0.b, Struct_2(Struct_1(global0.a), 37843i, vec4<bool>(var_0.b, false, true, true), Struct_1(var_0.a.ww), var_0.c), vec2<u32>(0u, 40930u)), true).c, Struct_3(firstLeadingBit(vec4<i32>(var_0.a.x, -44103i, 2147483647i, -2147483647i)), true, !var_0.b), vec4<bool>(true, true || var_0.c, var_0.b, false), func_2(true, func_4(false, Struct_3(var_0.a, var_0.c, true), vec4<bool>(var_0.c, var_0.c, true, var_0.c), Struct_3(var_0.a, true, var_0.b)).a, false | var_0.c)).a), Struct_2(Struct_1(vec2<i32>(24009i, -60984i) & -var_0.a.zx), var_0.a.x | ~(-global0.a.x), select(vec4<bool>(func_3(Struct_1(var_0.a.zz)), false, true, true), vec4<bool>(var_0.b & false, func_3(Struct_1(global0.a)), true, any(vec2<bool>(true, var_0.c))), vec4<bool>(true, all(vec4<bool>(false, false, true, var_0.b)), var_0.a.x != -2147483647i, true)), Struct_1(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(0i, -1i))), !(!var_0.c)), vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(8863u, 47739u), 61745u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(~vec4<u32>(79966u, 39017u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(var_0.c, var_0.c, true, true), vec4<bool>(true, var_0.c, var_0.c, var_0.b), vec4<bool>(false, var_0.b, false, false))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -619f) * _wgslsmith_f_op_f32(abs(-478f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(233f - 1284f)));
    global0 = func_5(!(!((i32(-1i) * -580i) < _wgslsmith_div_i32(-23895i, u_input.a))), Struct_2(Struct_1(~vec2<i32>(u_input.a, var_0.a.x) >> (~vec2<u32>(28924u, 4294967295u) % vec2<u32>(32u))), 2147483647i, !(!(!vec4<bool>(true, var_0.b, false, false))), func_4(func_3(Struct_1(var_0.a.xw)) | (false & var_0.c), func_2(true, Struct_1(vec2<i32>(26580i, -1i)), !var_0.b), !(!vec4<bool>(var_0.b, false, true, var_0.b)), Struct_3(var_0.a, any(vec4<bool>(var_0.c, var_0.b, true, var_0.b)), true)).a, false), ~(~vec2<u32>(81237u, _wgslsmith_dot_vec4_u32(vec4<u32>(1786u, 58033u, 26527u, 37832u), vec4<u32>(4294967295u, 4294967295u, 7069u, 22721u)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, 282f)));
    let var_2 = _wgslsmith_mult_u32(~20528u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.a.x, global0.a.x), -global0.a.x >> (_wgslsmith_mult_u32(var_2, var_2) % 32u)), _wgslsmith_mult_i32(-global0.a.x, 1i), var_0.c), firstLeadingBit(var_0.a.wyx) >> (firstLeadingBit(min(vec3<u32>(4294967295u, var_2, 0u), min(vec3<u32>(var_2, 0u, 4294967295u), vec3<u32>(var_2, 21669u, 58259u)))) % vec3<u32>(32u)));
}

