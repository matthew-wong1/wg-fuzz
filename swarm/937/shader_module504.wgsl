struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, -1814f, 383f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 411f, 536f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1770f, 557f, -584f))))), ~u_input.a.x);
    var var_1 = ~u_input.a.xy;
    var_1 = u_input.a.zx & vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(10834u, 45312u, 0u), u_input.a), min(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(var_1.x, var_1.x, 49577u))), ~select(var_0.b, u_input.a.x, arg_0.x)), 4294967295u);
    var var_2 = any(vec4<bool>(all(!select(arg_0, vec2<bool>(true, arg_0.x), arg_0)), all(vec2<bool>(true, u_input.a.x < 38965u)), arg_0.x, false));
    return var_0.a.zz;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = 548f;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true))), arg_1.a.zz);
    var var_2 = any(vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_sub_vec2_u32(~(~countOneBits(~vec2<u32>(arg_1.b, u_input.a.x))), ~vec2<u32>(0u, 32933u & u_input.a.x));
    var_2 = true || !(_wgslsmith_clamp_u32(~50168u, ~arg_1.b, _wgslsmith_add_u32(u_input.a.x, 34019u)) < abs(arg_1.b));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x + 672f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true))).x, -1199f)))), ~arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> vec3<i32> {
    return _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32((vec3<i32>(-59074i, -45557i, -1i) >> (u_input.a % vec3<u32>(32u))) >> (vec3<u32>(5554u, arg_1, 21025u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-55640i, -2147483647i, 23001i) >> (u_input.a % vec3<u32>(32u)))), -firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(63823i, 8656i, -2730i), vec3<i32>(-1i, -1i, 25429i)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-265f + -2711f), 559f, func_2(arg_1, Struct_1(vec3<f32>(-456f, -1000f, -135f), ~4294967295u), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(0i, arg_1.x, arg_1.x, arg_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 9631i, -1i, -20437i), vec4<i32>(arg_0.x, 55037i, arg_2.x, 2147483647i)))).a.x), 50833u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 801f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -452f) * var_0.a.x) + var_0.a.x))));
    var var_2 = func_2(vec3<i32>(reverseBits(~(-2147483647i)), -(~(i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(-3038i, _wgslsmith_sub_i32(-arg_2.x, -1i))), func_2(vec3<i32>(abs(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, arg_1.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_1.x), vec3<i32>(35957i, 1i, arg_0.x)), arg_2.x), var_0, -firstTrailingBit(~vec4<i32>(arg_0.x, -2147483647i, 9247i, 53759i))), ~select(-reverseBits(vec4<i32>(arg_0.x, arg_2.x, arg_1.x, -1i)), vec4<i32>(_wgslsmith_mult_i32(4053i, arg_0.x), arg_1.x, _wgslsmith_div_i32(-32236i, -2147483647i), 18722i), vec4<bool>(true, true, true, true)));
    var_2 = func_2(arg_0, func_2(-vec3<i32>(7665i, arg_0.x, 1i) | max(vec3<i32>(2147483647i, 26826i, 22150i), firstTrailingBit(arg_0)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, var_0.a.x, 1218f)))), abs(_wgslsmith_mod_u32(4294967295u, 23943u))), -vec4<i32>(func_4(var_0, 8956u, vec2<bool>(false, false)).x, -30414i, arg_0.x >> (var_0.b % 32u), arg_1.x >> (var_0.b % 32u))), abs(max(abs(vec4<i32>(arg_1.x, arg_2.x, 2147483647i, arg_2.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -18564i, arg_1.x, arg_0.x), vec4<i32>(-41142i, arg_1.x, arg_0.x, 2147483647i)), -vec4<i32>(-2147483647i, 25980i, arg_0.x, -4830i)))));
    var var_3 = func_2(_wgslsmith_mult_vec3_i32(arg_0, arg_0), func_2(vec3<i32>(arg_0.x, arg_1.x, _wgslsmith_div_i32(arg_0.x, arg_2.x)), var_0, ~abs(vec4<i32>(arg_1.x, 0i, arg_1.x, arg_2.x))), vec4<i32>(-_wgslsmith_sub_i32(reverseBits(arg_2.x), firstLeadingBit(arg_1.x)), -func_4(Struct_1(var_0.a, var_0.b), _wgslsmith_mod_u32(0u, var_0.b), select(vec2<bool>(false, true), vec2<bool>(false, true), true)).x, ~arg_2.x, -func_4(Struct_1(vec3<f32>(var_0.a.x, -153f, 611f), 18095u), ~u_input.a.x, vec2<bool>(true, true)).x));
    return var_0;
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1150f, -849f, 725f) + _wgslsmith_div_vec3_f32(vec3<f32>(-480f, 1374f, -878f), vec3<f32>(-281f, 760f, -898f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-399f, -1013f, 1264f) * vec3<f32>(-315f, 757f, -1476f))))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-322f, 364f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1220f + 540f) * _wgslsmith_f_op_f32(-1207f - -311f)), _wgslsmith_f_op_f32(floor(-237f)))), _wgslsmith_dot_vec3_u32(u_input.a, ~max(vec3<u32>(27812u, 4294967295u, u_input.a.x), u_input.a)));
    var var_1 = func_5(func_4(func_2(vec3<i32>(1i, 1i, 1i), var_0, ~vec4<i32>(-1i, -14708i, -1i, 0i)), ~4294967295u, select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_div_vec3_i32(vec3<i32>(~(-53040i), -23010i, 1i), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(17211i, -26073i, 40386i)), ~vec3<i32>(0i, 0i, -2147483647i), abs(vec3<i32>(-51002i, 73528i, -43693i)))) ^ ~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 38471i, 10975i)), -reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, 18505i, 3835i), select(vec3<i32>(19522i, 11394i, 1i), vec3<i32>(2147483647i, 1i, 0i), vec3<bool>(false, false, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(func_5(-vec3<i32>(1i, 1i, 6588i), firstTrailingBit(vec3<i32>(579i, -35711i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(11112i, 32901i, -30894i), vec3<i32>(64040i, 10493i, 25962i))).a))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(~u_input.a.x), 65454u, func_5(abs(vec3<i32>(-26694i, -12370i, -1i)), func_4(var_0, var_0.b, vec2<bool>(false, false)), countOneBits(vec3<i32>(8237i, 32379i, 0i))).b), _wgslsmith_sub_u32(64889u, select(_wgslsmith_mod_u32(u_input.a.x, var_0.b), u_input.a.x, any(vec4<bool>(true, false, false, false)))), firstTrailingBit(~func_5(vec3<i32>(1294i, 1i, -41675i), vec3<i32>(0i, 36817i, 2147483647i), vec3<i32>(62399i, 32914i, 1i)).b)));
    let var_3 = u_input.a;
    var_1 = func_2(vec3<i32>(-countOneBits(~0i), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(12269i, 21354i), vec2<i32>(-13787i, -31948i), true), vec2<i32>(1i, -7597i)), 1i), var_0, _wgslsmith_add_vec4_i32(vec4<i32>(-(~1i), 1i, -_wgslsmith_add_i32(0i, -2147483647i), 1i), max(~abs(vec4<i32>(-40921i, 0i, 2147483647i, -34931i)), -abs(vec4<i32>(-2147483647i, 1i, -1667i, 1i)))));
    return vec3<f32>(_wgslsmith_f_op_f32(2597f + _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - -1979f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(-_wgslsmith_clamp_i32(~0i, -4040i, ~(-2147483647i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -1i, -14816i), firstLeadingBit(vec4<i32>(-24652i, -2147483647i, 74140i, -1i))) >> (~u_input.a.x % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))), ~u_input.a.x);
    let var_2 = Struct_1(vec3<f32>(-165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -960f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) + var_1.a.x)), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(68545u, var_1.b, 0u)), min(u_input.a, min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(81507u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, var_1.b, var_1.b)))));
    var var_3 = -775f;
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, _wgslsmith_mult_i32(71i, -1i), abs(61704i)) >> (vec3<u32>(4294967295u, abs(var_2.b >> (38779u % 32u)), _wgslsmith_add_u32(~var_1.b, _wgslsmith_mult_u32(var_2.b, 4969u))) % vec3<u32>(32u)), _wgslsmith_mod_i32(-1i, -_wgslsmith_add_i32(49457i << (u_input.a.x % 32u), -1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.x)), var_2.a.x, _wgslsmith_f_op_f32(trunc(-275f)), -476f), vec4<f32>(_wgslsmith_f_op_f32(round(373f)), _wgslsmith_f_op_f32(trunc(-800f)), 426f, _wgslsmith_f_op_f32(select(-497f, var_4.x, true))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-803f * -794f), _wgslsmith_div_f32(869f, var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), var_4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(644f, var_2.a.x, 578f, var_1.a.x)))), false))));
}

