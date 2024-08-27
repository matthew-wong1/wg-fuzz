struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = !(!select(true, false, !(true & arg_0.a.x)));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1012f, -337f) * -1815f)))) * 1000f);
    let var_3 = !select(!vec3<bool>(true & var_1.a.x, true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, false))), !select(select(vec3<bool>(var_1.a.x, var_1.a.x, true), vec3<bool>(arg_0.a.x, false, false), vec3<bool>(var_1.a.x, true, arg_0.a.x)), vec3<bool>(true, arg_0.a.x, var_1.a.x), !vec3<bool>(var_1.a.x, var_1.a.x, true)), ~1u > ~(~arg_0.b));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(553f))) * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(163f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1645f + -2355f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-113f)))))))));
    return ~(~_wgslsmith_div_i32(31266i >> (arg_2 % 32u), 0i)) >> (firstTrailingBit(37367u) % 32u);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = max(vec4<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), u_input.a.x << ((4294967295u & arg_3.b) % 32u), 1i, func_3(arg_3, u_input.a.x, ~0u)) | reverseBits(u_input.a), firstTrailingBit(-u_input.a));
    var var_1 = Struct_1(arg_2.a, ~max(arg_2.b, ~(~arg_3.b)));
    var var_2 = ~arg_0.yy;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 + arg_1)))))));
    var var_4 = u_input.a.zx;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = vec3<i32>(-16724i, u_input.a.x, _wgslsmith_div_i32(firstTrailingBit(-441i), min(28442i, _wgslsmith_clamp_i32(18132i, ~u_input.a.x, _wgslsmith_add_i32(-1i, u_input.a.x)))));
    var var_1 = arg_1.a;
    var_1 = arg_0.a;
    var_1 = select(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-105f, -881f, true))))) == _wgslsmith_f_op_f32(trunc(158f)));
    let var_2 = _wgslsmith_f_op_f32(abs(-297f));
    return firstTrailingBit(-(u_input.a.x >> (firstLeadingBit(arg_1.b) % 32u)));
}

fn func_5(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_add_i32(max(1i, -_wgslsmith_add_i32(u_input.a.x ^ u_input.a.x, -77393i)), u_input.a.x);
    var var_1 = arg_0;
    var var_2 = Struct_1(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(arg_0, arg_0), func_2(vec3<u32>(1u, 0u, 0u), 1543f, Struct_1(vec2<bool>(false, arg_0), 0u), Struct_1(vec2<bool>(arg_0, arg_0), 4294967295u)).a)), 21143u);
    var var_3 = max(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(1u), var_2.b), ~(max(vec2<u32>(var_2.b, 19302u), vec2<u32>(var_2.b, 0u)) | ~vec2<u32>(0u, 4294967295u))), vec2<u32>(_wgslsmith_mod_u32(var_2.b, var_2.b), reverseBits(~1u) >> (0u % 32u)));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f * -724f)), 837f) * -100f), _wgslsmith_f_op_f32(1137f + -959f), arg_0));
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = func_2(~vec3<u32>(35139u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 9576u, 26618u, 4294967295u), vec4<u32>(1u, 87912u, 0u, 1u)), _wgslsmith_mod_u32(0u, 27818u)), ~(~31799u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), func_2(reverseBits(~vec3<u32>(0u, 0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-989f))), Struct_1(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), ~1u), func_2(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, arg_1), _wgslsmith_div_f32(arg_1, arg_1))), Struct_1(vec2<bool>(true, false), 17841u), func_2(min(vec3<u32>(4294967295u, 54152u, 80202u), vec3<u32>(27066u, 13261u, 41307u)), _wgslsmith_f_op_f32(789f + arg_1), Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(false, false), 4294967295u)))), Struct_1(func_2(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1186f, arg_1)), Struct_1(vec2<bool>(true, true), ~4294967295u), func_2(select(vec3<u32>(0u, 13166u, 4294967295u), vec3<u32>(76968u, 0u, 0u), vec3<bool>(true, true, true)), arg_1, Struct_1(vec2<bool>(true, false), 4294967295u), func_2(vec3<u32>(4294967295u, 5710u, 1u), 1766f, Struct_1(vec2<bool>(false, false), 26178u), Struct_1(vec2<bool>(false, false), 25277u)))).a, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 6626u, 12136u, 32525u), vec4<u32>(27302u, 2830u, 1u, 19240u))), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = ~(-vec4<i32>(i32(-1i) * -1i, i32(-1i) * -4013i, ~(u_input.a.x ^ 49432i), -arg_2));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_0.b, 113810u, 18152u, 0u)), min(~vec4<u32>(var_0.b, var_0.b, 65714u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1843u, var_0.b, var_0.b, var_0.b), vec4<u32>(var_0.b, 1u, var_0.b, 1u), vec4<u32>(1u, 47948u, var_0.b, 4294967295u)))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0.b, var_0.b, 42298u, 4294967295u) & vec4<u32>(97485u, var_0.b, var_0.b, 23335u)), ~(vec4<u32>(88202u, 0u, 0u, var_0.b) & vec4<u32>(var_0.b, var_0.b, 25316u, 4294967295u)))), ~vec4<u32>(var_0.b, func_2(~vec3<u32>(1u, var_0.b, var_0.b), arg_0.x, Struct_1(var_0.a, 38829u), func_2(vec3<u32>(12432u, 4294967295u, 4294967295u), arg_1, Struct_1(vec2<bool>(var_0.a.x, true), 39991u), Struct_1(var_0.a, 55657u))).b, _wgslsmith_div_u32(~var_0.b, ~1u), var_0.b));
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-57542i, -abs(_wgslsmith_clamp_i32(var_1.x, -25535i, var_1.x)), -arg_2, 2147483647i), vec4<i32>(16514i, _wgslsmith_add_i32(-13396i, 60924i), firstTrailingBit(-7033i), max(~var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 19758i) << (vec2<u32>(var_0.b, 19015u) % vec2<u32>(32u)), vec2<i32>(23806i, arg_2)))));
    return abs(arg_2);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: u32) -> bool {
    let var_0 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1040f)), -409f))), _wgslsmith_f_op_f32(func_5(_wgslsmith_sub_i32(1i, 52565i | arg_1.x) < func_4(func_2(vec3<u32>(114778u, 13753u, 4294967295u), arg_2.x, Struct_1(vec2<bool>(true, true), 14023u), Struct_1(vec2<bool>(true, false), 63741u)), func_2(vec3<u32>(arg_3, arg_3, 0u), arg_2.x, Struct_1(vec2<bool>(true, false), arg_3), Struct_1(vec2<bool>(false, false), arg_3)), true))), arg_0);
    let var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(16658u, 48465u, arg_3), vec3<u32>(arg_3, 58877u, arg_3)) ^ (vec3<u32>(1u, 17612u, 4294967295u) ^ vec3<u32>(16687u, arg_3, 1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, arg_3, arg_3), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, 15728u, 4294967295u), vec3<u32>(arg_3, 1u, arg_3)), vec3<u32>(arg_3, arg_3, arg_3))), reverseBits(min(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3, arg_3, 4294967295u), vec3<u32>(arg_3, 0u, 1u)), vec3<u32>(arg_3, 12231u, arg_3) >> (vec3<u32>(arg_3, arg_3, 40747u) % vec3<u32>(32u)))));
    let var_2 = Struct_1(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec4<bool>(true, var_1.x == arg_3, true, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, ~22643u, 1u, 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(56469u, 32789u, 15378u, arg_3) & vec4<u32>(37673u, 73328u, arg_3, 4294967295u), vec4<u32>(0u, arg_3, 5639u, 4294967295u))));
    let var_3 = ~abs(abs(-44803i) | _wgslsmith_div_i32(firstLeadingBit(var_0), 1i));
    let var_4 = ~arg_3;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~firstLeadingBit(106722u)));
    let var_1 = Struct_1(select(vec2<bool>(!func_1(u_input.a.x, vec3<i32>(-1i, -2147483647i, 0i), vec2<f32>(-411f, 318f), var_0), false), vec2<bool>(select(true, true, true), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) != func_4(Struct_1(vec2<bool>(false, false), 14229u), Struct_1(vec2<bool>(false, false), var_0), true)), true), firstTrailingBit(var_0));
    let var_2 = (u_input.a.x >> (~var_0 % 32u)) >= u_input.a.x;
    var var_3 = vec2<u32>(min(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.b, 24933u, var_1.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 25736u, 67808u, 1u), vec4<u32>(var_1.b, 10858u, 38020u, var_1.b))), ~var_1.b)), _wgslsmith_add_u32(~(~var_0), var_0) ^ countOneBits(1u));
    var_3 = vec2<u32>(3526u, _wgslsmith_add_u32(firstTrailingBit(var_3.x << (~0u % 32u)), 75469u));
    let var_4 = var_1;
    var var_5 = Struct_1(var_4.a, firstLeadingBit(1u));
    var_3 = ~vec2<u32>(abs(_wgslsmith_sub_u32(~var_5.b, var_1.b)), abs(~(~61481u)));
    let var_6 = Struct_1(func_2(min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, 0u, 3303u), vec3<u32>(3156u, 1u, 969u), vec3<u32>(1u, 4294967295u, var_1.b)), vec3<u32>(~var_5.b, 16188u >> (var_4.b % 32u), ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -489f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(~(~vec3<u32>(23751u, 18906u, var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1198f))), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, var_3.x, var_3.x), vec3<u32>(59905u, var_0, var_4.b)), _wgslsmith_f_op_f32(floor(-170f)), Struct_1(vec2<bool>(var_2, var_5.a.x), var_3.x), Struct_1(var_5.a, 1u)), var_1), func_2(vec3<u32>(~var_5.b, 14374u, _wgslsmith_add_u32(1u, var_5.b)), -3082f, var_1, Struct_1(var_5.a, 1u))).a, ~60871u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-889f, 538f), firstTrailingBit(_wgslsmith_div_i32(func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1195f, -646f) * vec2<f32>(615f, -388f)), _wgslsmith_f_op_f32(round(-713f)), ~u_input.a.x), i32(-1i) * -2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, -205f, 482f, 1528f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(f32(-1f) * -1054f), -1000f, -1010f), !select(vec4<bool>(var_6.a.x, false, false, true), vec4<bool>(var_2, true, true, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 1646f, 450f, 865f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1238f, 953f, 1043f, 1366f) + vec4<f32>(-402f, 215f, -358f, -1033f)), !var_2)))));
}

