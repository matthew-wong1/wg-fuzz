struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(47457i, 31838i, 2147483647i));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> i32 {
    let var_0 = u_input.d.x;
    var var_1 = abs(vec3<u32>(~(_wgslsmith_clamp_u32(0u, u_input.b.x, 1u) >> (~37477u % 32u)), _wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~u_input.b.x));
    let var_2 = !arg_2;
    var var_3 = Struct_1(vec3<i32>(arg_3, _wgslsmith_clamp_i32(2048i << (0u % 32u), 19698i, u_input.d.x), countOneBits(40248i)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -688f);
    return reverseBits(2147483647i);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_2 {
    global2 = Struct_1(-vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(0i), abs(global1.a.x)), global1.a.x, -14660i));
    var var_0 = 508f;
    let var_1 = !(!(!(!any(vec2<bool>(true, true)))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))))), ~max(2147483647i, ~54697i), -6339i);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(287f)), _wgslsmith_f_op_f32(-1707f * 895f)))), _wgslsmith_div_f32(-2410f, _wgslsmith_f_op_f32(sign(global0.a.x))));
    return Struct_2(vec4<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a.x)), -1329f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1304f, 632f, false)), 579f)))), 15384i | _wgslsmith_clamp_i32(reverseBits(-29231i), _wgslsmith_mod_i32(-arg_0, 41352i), _wgslsmith_div_i32(~global1.a.x, ~arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-5299i), -global2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 1i, global0.c, arg_0), vec4<i32>(global2.a.x, -17831i, global0.b, -2147483647i)), 1i) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, u_input.b.x), abs(vec4<u32>(34008u, 0u, arg_1, arg_3.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, arg_3.x, 117751u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 1u, arg_1), vec4<u32>(4294967295u, 10178u, 14381u, 6963u))) % vec4<u32>(32u)), -(~(~vec4<i32>(global2.a.x, 32636i, global0.b, -32933i)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_div_vec3_i32(~global3.a, firstTrailingBit(countOneBits(u_input.d))) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u)));
    global1 = Struct_1(-firstTrailingBit(firstTrailingBit(vec3<i32>(arg_1.c, arg_1.c, 2147483647i))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 16288u, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 33560u) << (vec3<u32>(u_input.b.x, u_input.b.x, 26644u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_0 = all(!vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))));
    var_0 = any(vec3<bool>(true && all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, false, true))), !(_wgslsmith_f_op_f32(f32(-1f) * -600f) <= _wgslsmith_f_op_f32(trunc(226f)))));
    var_0 = true;
    return Struct_1(~(reverseBits(firstLeadingBit(u_input.d)) ^ _wgslsmith_clamp_vec3_i32(-global2.a, vec3<i32>(1141i, arg_1.b, -1i), global2.a << (vec3<u32>(u_input.b.x, 59393u, 79985u) % vec3<u32>(32u)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)), 679f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-845f)))), 1049f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(918f * global0.a.x)))), global1.a.x << (1u % 32u), firstLeadingBit(-7246i));
    var var_2 = 29979u;
    let var_3 = u_input.b;
    return Struct_1(countOneBits(u_input.d));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    global1 = Struct_1(~min(~(~vec3<i32>(-27090i, -2147483647i, 1i)), vec3<i32>(i32(-1i) * -2147483647i, 14964i | u_input.d.x, i32(-1i) * -1i)));
    var var_0 = func_5(func_4(max(~(-vec2<i32>(arg_0, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, global2.a.x) & global2.a.yz, ~vec2<i32>(global0.b, -2147483647i))), func_3(_wgslsmith_sub_i32(func_2(vec3<bool>(false, false, true), u_input.b, false, -25797i), firstTrailingBit(28593i)), u_input.b.x, -_wgslsmith_div_vec3_i32(global2.a, global2.a), ~(~vec3<u32>(49453u, u_input.b.x, 25967u))), func_3(select(u_input.a.x, 4138i, global0.a.x <= -573f), ~1u, -select(vec3<i32>(global2.a.x, u_input.d.x, global3.a.x), global3.a, false), vec3<u32>(31250u, 4294967295u, ~47308u)).a.yx));
    let var_1 = func_4(vec2<i32>(-2147483647i, max(_wgslsmith_sub_i32(func_5(Struct_1(var_0.a)).a.x, -1i), global2.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, 1f, -282f, global0.a.x)), -global2.a.x, 0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, _wgslsmith_f_op_f32(max(1449f, 337f)))));
    global0 = func_3(max(func_5(var_1).a.x, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_1.a.x, -2147483647i, var_1.a.x, arg_0)), vec4<i32>(-41440i, global1.a.x, var_0.a.x, global0.c) & vec4<i32>(global1.a.x, u_input.d.x, -21853i, -2054i))), ~(~u_input.b.x) << (~u_input.b.x % 32u), select(u_input.d, func_5(func_5(Struct_1(global1.a))).a, !any(vec2<bool>(true, true))), reverseBits(select(abs(~vec3<u32>(u_input.b.x, 82296u, 55769u)), ~(vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (vec3<u32>(1u, 0u, u_input.b.x) % vec3<u32>(32u))), select(false, any(vec3<bool>(true, true, false)), true))));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(467f, 742f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.a.x, 759f)), _wgslsmith_div_f32(489f, global0.a.x))), _wgslsmith_f_op_f32(-global0.a.x)))), global0.a.x, -1744f, global0.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-1520f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, var_2.x) + -954f) + _wgslsmith_f_op_f32(var_2.x - global0.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-859f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-744f, global0.a.x) + var_2.x))))), 1048f, _wgslsmith_f_op_f32(-global0.a.x));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global2 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, ~u_input.e), -779i, firstTrailingBit(_wgslsmith_div_i32(-16702i, -30735i))));
    let var_0 = Struct_1(select(firstLeadingBit(max(global3.a, abs(vec3<i32>(arg_2.b, -1i, 0i)))), global2.a, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))));
    let var_1 = func_3(-7600i, _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(42426u, 38200u)), -(reverseBits(var_0.a) | -vec3<i32>(global3.a.x, arg_2.b, -2147483647i)), max(max(max(abs(vec3<u32>(u_input.b.x, 50647u, 24165u)), ~vec3<u32>(u_input.b.x, arg_0, 0u)), min(vec3<u32>(4294967295u, 13662u, 47509u) & vec3<u32>(9652u, u_input.b.x, 7855u), ~vec3<u32>(arg_0, arg_0, 0u))), vec3<u32>((u_input.b.x & 4294967295u) >> ((arg_0 >> (90834u % 32u)) % 32u), countOneBits(u_input.b.x) & 1u, u_input.b.x)));
    let var_2 = -u_input.a.x > _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, u_input.e), var_1.c), 2147483647i), arg_2.b);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_div_f32(-911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1440f * 800f) - _wgslsmith_f_op_f32(round(-456f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(762f + var_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-233f, var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)))))));
    return func_4(-vec2<i32>(1i, 1i), func_3(22365i, ~_wgslsmith_add_u32(3838u, ~u_input.b.x), countOneBits(reverseBits(global2.a)), vec3<u32>(~(4294967295u ^ u_input.b.x), 1u, abs(~1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1283f, -166f))) + arg_1.a.xy) - var_1.a.wx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.b.x, 54763u), u_input.b), vec2<u32>(~(u_input.b.x & 50110u), u_input.b.x)), Struct_2(_wgslsmith_f_op_vec4_f32(func_1(global2.a.x)), _wgslsmith_div_i32(~(-global2.a.x), ~global3.a.x), _wgslsmith_clamp_i32(0i, firstTrailingBit(u_input.a.x), -2147483647i)), func_3(-1i, ~_wgslsmith_div_u32(0u, _wgslsmith_add_u32(65928u, u_input.b.x)), func_5(Struct_1(vec3<i32>(-22225i, 2147483647i, global1.a.x))).a, ~vec3<u32>(u_input.b.x | u_input.b.x, u_input.b.x, 4294967295u)));
    var var_0 = func_3(~(-175i), 40209u, global3.a, (vec3<u32>(reverseBits(u_input.b.x), 0u, u_input.b.x) ^ firstLeadingBit(vec3<u32>(4294967295u, 1u, u_input.b.x))) << (vec3<u32>(_wgslsmith_mod_u32(u_input.b.x & 4294967295u, max(u_input.b.x, 22694u)), u_input.b.x, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(20259u, u_input.b.x, 4294967295u))) % vec3<u32>(32u)));
    let var_1 = func_6(u_input.b.x, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), var_0.a.x, global0.a.x, 1f), -2681i, -u_input.a.x), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1966f, -251f, global0.a.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 805f, global0.a.x, -991f))))), reverseBits((global1.a.x ^ var_0.b) & _wgslsmith_mult_i32(-36752i, -1i)), -8794i));
    let var_2 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))));
    var var_3 = func_3(global2.a.x, 15195u, min(_wgslsmith_div_vec3_i32(u_input.d, ~vec3<i32>(global2.a.x, u_input.c, var_0.c) ^ u_input.d), var_1.a), ~(~(~vec3<u32>(u_input.b.x, 1u, 22001u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 0u))))).a.ww;
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

