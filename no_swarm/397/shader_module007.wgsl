struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-46326i, 1i);

var<private> global1: vec4<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(select(min(vec4<i32>(-1i, 2147483647i, 5699i, global0.x), vec4<i32>(u_input.a, global0.x, -1i, global0.x)), reverseBits(vec4<i32>(global1.x, 5541i, 1i, global1.x)), vec4<bool>(true, true, true, true)), firstLeadingBit(vec4<i32>(-11464i, -22452i, global1.x, u_input.a) >> (vec4<u32>(0u, 1u, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, 25316i, -1i, global0.x) | min(vec4<i32>(-1i, -2147483647i, 10929i, 63797i), vec4<i32>(global0.x, 2147483647i, -2147483647i, -1029i))), min(vec4<i32>(57341i, _wgslsmith_add_i32(u_input.a, 1i), global1.x ^ u_input.a, u_input.a ^ global1.x), vec4<i32>(~global1.x, countOneBits(0i), global1.x, 1i)));
    let var_0 = max(0i, global1.x);
    let var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(var_0, var_0 << (~38998u % 32u), u_input.a), vec3<i32>(~2147483647i, -u_input.a, global1.x));
    let var_2 = any(select(vec4<bool>(true, all(vec2<bool>(true, true)), true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    global1 = vec4<i32>(var_1.x, ~0i, i32(-1i) * -29381i, ~global0.x);
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = firstLeadingBit(~arg_0.b.x);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))) * _wgslsmith_f_op_f32(-149f + arg_2.a))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.b.x, -2147483647i, 2147483647i, u_input.a)), _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_2.b.x, global0.x, arg_2.b.x, arg_2.b.x), vec4<i32>(-4974i, -2147483647i, 2147483647i, arg_2.b.x), vec4<bool>(false, true, true, false)), ~vec4<i32>(-1i, arg_1.b.x, 11494i, arg_0.b.x))), countOneBits(global1.x), ~arg_0.b.x));
    global1 = firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(u_input.a, arg_1.b.x), max(global0.x, u_input.a), _wgslsmith_add_i32(-12836i, var_1.b.x), global0.x | -7028i), select(vec4<i32>(arg_1.b.x, arg_1.b.x, 2147483647i, -1i) & _wgslsmith_mod_vec4_i32(vec4<i32>(3197i, u_input.a, 1i, arg_0.b.x), vec4<i32>(arg_1.b.x, arg_1.b.x, -24895i, 36746i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, global1.x, arg_0.b.x, 15255i), vec4<i32>(2147483647i, -2147483647i, arg_2.b.x, arg_0.b.x)), true)));
    var_1 = Struct_1(-1905f, arg_1.b);
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: i32) -> bool {
    let var_0 = select(!arg_1.wx, vec2<bool>(true, arg_1.x), func_4(Struct_1(_wgslsmith_div_f32(1003f, _wgslsmith_f_op_f32(f32(-1f) * -838f)), global1.xwy), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1681f)))), ~(~vec3<i32>(38115i, -31076i, 37349i))), Struct_1(-1139f, vec3<i32>(-32294i, 8986i, u_input.a) ^ -global1.xxy), vec3<u32>(func_3(), firstTrailingBit(1u), abs(1u))));
    global1 = vec4<i32>(~arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(global1.x, 1i, global0.x), 17371i, _wgslsmith_div_i32(-2147483647i, i32(-1i) * -18582i)), -select(vec3<i32>(-39415i, -29959i, -2147483647i), vec3<i32>(global0.x, u_input.a, arg_2), false)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, firstLeadingBit(i32(-1i) * -17046i)), 663i), arg_0.x);
    var var_1 = Struct_1(-1050f, -global1.xxz & _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_2, u_input.a, -1i), ~countOneBits(vec3<i32>(arg_2, -1i, -1i)), ~(-vec3<i32>(global0.x, u_input.a, global1.x))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -579f))), -var_1.b | arg_0.yzz);
    return arg_1.x;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = min(vec3<u32>(82833u, ~(~1u), 42185u), select(~(~vec3<u32>(1u, 4294967295u, 14949u)), ~select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(56400u, 126418u, 1u), vec3<u32>(24289u, 4294967295u, 4294967295u), vec3<u32>(0u, 64475u, 81906u)), arg_2 & arg_2), !vec3<bool>(true, func_2(vec4<i32>(-1i, 17391i, 19128i, global0.x), vec4<bool>(arg_2, false, true, arg_2), u_input.a), arg_2)));
    let var_1 = ~(-(~59986i));
    var_0 = vec3<u32>(~(~var_0.x), _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_sub_u32(var_0.x, 0u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)), ~(vec3<i32>(0i, var_1, var_1) & global1.yxy) >> (~(~vec3<u32>(4294967295u, var_0.x, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, 0u)) % vec3<u32>(32u)));
    var var_3 = var_2.a;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = (abs(global1.x) | firstTrailingBit(26947i)) > 1i;
    var var_1 = global1.yz;
    global1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, ~(-var_1.x), func_1(var_0, vec3<f32>(arg_1, 234f, -1000f), true | var_0).b.x, global0.x), vec4<i32>(global1.x, _wgslsmith_div_i32(arg_0.b.x | 58696i, _wgslsmith_sub_i32(u_input.a, 13799i)), arg_0.b.x, u_input.a)), ~vec4<i32>(func_1(!var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(235f, arg_1, arg_0.a) * vec3<f32>(arg_0.a, arg_1, arg_1)), true).b.x, i32(-1i) * -1i, _wgslsmith_add_i32(2147483647i, arg_0.b.x) & reverseBits(var_1.x), ~0i));
    global1 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0.b.x, -179i, -1i, global0.x)) << (vec4<u32>(abs(4294967295u), max(98041u, 4294967295u), 2075u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global1.x, -28232i, 14011i), countOneBits(global0.x), global1.x & var_1.x, global1.x), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -1i, global1.x, var_1.x), reverseBits(vec4<i32>(arg_0.b.x, 2147483647i, global1.x, 14518i))))), _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(global1.xw, -global1.zx), global1.zy, select(!vec2<bool>(var_0, true), vec2<bool>(true, true), true)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.yz, global1.wx), _wgslsmith_sub_i32(u_input.a, 0i)), global1.wz)), global0.x, ~7474i);
    return _wgslsmith_f_op_f32(sign(-356f));
}

fn func_6(arg_0: f32) -> Struct_1 {
    global0 = -vec2<i32>(global1.x, max(_wgslsmith_sub_i32(global0.x, global0.x), 2147483647i | u_input.a) ^ u_input.a);
    let var_0 = Struct_1(_wgslsmith_div_f32(1686f, -736f), vec3<i32>(u_input.a, global0.x, u_input.a));
    let var_1 = var_0;
    var var_2 = func_1(func_4(func_1(!any(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1171f, var_0.a)), true), func_1(func_4(Struct_1(909f, var_1.b), var_1, var_1, ~vec3<u32>(30412u, 0u, 33684u)), vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(sign(-1040f)), _wgslsmith_f_op_f32(max(503f, -1196f))), all(vec2<bool>(true, true))), func_1(all(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-1000f + var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec4<bool>(true, true, true, true))), countOneBits(vec3<u32>(_wgslsmith_clamp_u32(79000u, 4294967295u, 30081u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 86564u, 4294967295u, 1u), vec4<u32>(12931u, 53309u, 45412u, 4294967295u)), max(118739u, 69228u)))), vec3<f32>(-416f, _wgslsmith_f_op_f32(arg_0 - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(-var_0.a)))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(func_2(vec4<i32>(u_input.a, var_1.b.x, -67432i, -2147483647i), vec4<bool>(true, false, false, true), 14212i), true, true))));
    var var_3 = 1u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 350f;
    var var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(-734f >= var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -303f)), true), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(f32(-1f) * -147f))))));
    global0 = global1.zw | vec2<i32>(0i, -1i);
    let var_2 = func_6(1347f);
    let var_3 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(countOneBits(global0.x << (38519u % 32u)), -(~0i)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(-reverseBits(vec4<i32>(-1649i, var_3, -1i, global0.x))), ~(-(vec4<i32>(var_3, 5036i, global0.x, -1i) | vec4<i32>(global1.x, var_2.b.x, global1.x, -35913i))), ~abs(-vec4<i32>(global0.x, var_3, var_2.b.x, var_1.b.x))), abs(abs(countOneBits(~69129u))));
}

