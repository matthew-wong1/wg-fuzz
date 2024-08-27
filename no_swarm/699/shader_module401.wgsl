struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    let var_0 = -70537i;
    let var_1 = -18683i;
    let var_2 = -(~_wgslsmith_sub_i32(var_0 ^ var_1, var_0)) | var_0;
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(51548u, 4294967295u, 11217u), true)), _wgslsmith_add_vec3_u32(vec3<u32>(34073u, u_input.b, 12634u), ~vec3<u32>(u_input.b, 28330u, 0u))), _wgslsmith_add_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(0u, 1u, 0u))), vec3<u32>(~33961u, 1u | u_input.a.x, max(u_input.a.x, u_input.a.x)))) | countOneBits(abs(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.a.x))));
    var var_4 = ~(-(~abs(vec3<i32>(-4669i, var_1, 45816i))));
    return select(true, any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), all(vec2<bool>(true, false))))), any(vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~(select(select(_wgslsmith_div_vec3_u32(vec3<u32>(48857u, u_input.a.x, arg_1), vec3<u32>(u_input.a.x, 4294967295u, 0u)), vec3<u32>(1u, 41694u, 0u), true || arg_2.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 11935u, 4294967295u), vec3<u32>(1u, u_input.b, arg_1)), select(arg_2.zxz, vec3<bool>(true, arg_2.x, arg_2.x), arg_2.yww)) << (vec3<u32>(~u_input.a.x, u_input.a.x, ~_wgslsmith_mult_u32(u_input.b, 9129u)) % vec3<u32>(32u)));
    let var_1 = Struct_1(!arg_2.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f - 872f) * arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-791f)))))), 1i);
    var var_2 = min(_wgslsmith_sub_i32(select(-var_1.c, ~53027i >> (0u % 32u), arg_2.x), -58039i), 19334i);
    let var_3 = vec2<bool>(func_3(), all(arg_2.yy));
    var var_4 = select(_wgslsmith_div_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(21369i, -2147483647i), vec2<i32>(-1i, 10683i))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, var_1.c, 2147483647i), vec3<i32>(var_1.c, var_1.c, var_1.c))), -1145i, -1i), ~vec4<i32>(firstTrailingBit(35926i), select(-62828i, -64003i, var_3.x), var_1.c, abs(var_1.c))), vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, var_1.c, 61364i) & vec3<i32>(-1i, var_1.c, var_1.c), vec3<i32>(var_1.c, 18450i, 2147483647i)), 1143i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-var_1.c, 1i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(20710i, 4669i)))), var_1.c, -70566i), !(!vec4<bool>(var_3.x, any(vec3<bool>(var_3.x, true, var_1.a.x)), true, select(var_3.x, false, true))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, 449f)), u_input.a.x, vec4<bool>(true, func_3(), !arg_2.a.x, true)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(903f))), _wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(ceil(-1916f)))))));
    var var_1 = !arg_0.a.x;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.b, arg_1.b)))) >= _wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b), arg_1.b))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(arg_1.b, 1898f), _wgslsmith_f_op_f32(trunc(-1055f)), -734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, arg_1.b) - -385f))));
    return Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-606f, 977f)), 329f, true)), reverseBits(arg_2.c) | min(_wgslsmith_clamp_i32(select(8695i, arg_0.c, arg_1.a.x), _wgslsmith_mod_i32(arg_2.c, arg_2.c), -arg_0.c), 2147483647i));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(58085u, 33292u, 18462u), min(~(~u_input.b), ~(~u_input.b)));
    var var_1 = Struct_1(select(arg_0.a, vec2<bool>(arg_0.a.x, true), u_input.b < _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, arg_1), vec3<u32>(var_0.x, arg_1, 0u) | vec3<u32>(arg_1, u_input.b, 0u))), -991f, arg_0.c);
    var var_2 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c, min(arg_0.c, 0i), firstTrailingBit(-2147483647i), var_1.c), vec4<i32>(-1i) * -vec4<i32>(var_1.c, 2147483647i, arg_0.c, var_1.c)) | abs(firstTrailingBit(vec4<i32>(-2147483647i, 26741i, 26818i, 0i) & vec4<i32>(2147483647i, 2147483647i, arg_0.c, var_1.c))));
    var var_3 = Struct_1(func_2(func_2(Struct_1(vec2<bool>(var_1.a.x, true), _wgslsmith_f_op_f32(var_1.b * arg_0.b), ~var_1.c), Struct_1(arg_0.a, arg_0.b, 2147483647i), func_2(arg_0, arg_0, arg_0)), arg_0, arg_0).a, _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))), arg_0.c);
    var var_4 = Struct_1(!(!select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, false), var_3.a)), arg_0.b, _wgslsmith_mod_i32(-24039i, i32(-1i) * -arg_0.c));
    return -8351i;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> f32 {
    let var_0 = vec2<bool>(false, !all(select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), true), vec3<bool>(true, false, arg_1.a.x))));
    var var_1 = 0i;
    let var_2 = all(!vec4<bool>(select(1u, u_input.a.x, arg_1.a.x) <= u_input.a.x, !(-1000f == arg_1.b), u_input.a.x < _wgslsmith_mod_u32(u_input.b, 75984u), false));
    var var_3 = Struct_1(var_0, arg_1.b, arg_3.x);
    let var_4 = func_2(Struct_1(var_3.a, arg_1.b, arg_3.x), func_2(arg_1, func_2(arg_1, arg_1, Struct_1(var_0, _wgslsmith_f_op_f32(max(-710f, var_3.b)), arg_3.x)), func_2(func_2(func_2(Struct_1(vec2<bool>(true, arg_1.a.x), -1000f, 0i), arg_1, arg_1), func_2(Struct_1(vec2<bool>(true, false), -1231f, 72825i), Struct_1(arg_1.a, arg_1.b, arg_2), arg_1), arg_1), Struct_1(!var_3.a, _wgslsmith_div_f32(-484f, var_3.b), countOneBits(1i)), arg_1)), func_2(func_2(Struct_1(var_0, arg_1.b, abs(0i)), Struct_1(!var_3.a, -303f, -arg_0.x), func_2(arg_1, func_2(arg_1, Struct_1(arg_1.a, -498f, arg_0.x), Struct_1(var_0, var_3.b, arg_0.x)), func_2(arg_1, Struct_1(vec2<bool>(true, false), -1000f, 71237i), Struct_1(arg_1.a, arg_1.b, -2147483647i)))), arg_1, Struct_1(var_0, var_3.b, 1i))).a;
    return var_3.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(-2147483647i, arg_0.c)), arg_0.c | -6204i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(arg_0.c, arg_0.c)) << (u_input.a.x % 32u), -56641i, func_5(func_2(arg_0, arg_0, Struct_1(arg_1, arg_0.b, arg_0.c)), 1u))), arg_0, firstTrailingBit(~(-_wgslsmith_mult_i32(arg_0.c, arg_0.c))), vec2<i32>(-_wgslsmith_sub_i32(arg_0.c, 1i), reverseBits(12864i))));
    let var_1 = u_input.b;
    var_0 = _wgslsmith_div_f32(-620f, -2668f);
    var var_2 = ~countOneBits(min(~(~vec3<u32>(var_1, var_1, u_input.b)), ~vec3<u32>(u_input.b, var_1, 1u) >> (countOneBits(vec3<u32>(var_1, 66996u, u_input.a.x)) % vec3<u32>(32u))));
    var_0 = arg_0.b;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.b) << (min(u_input.a.x, u_input.a.x) % 32u), 37554u, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, 3140u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u))));
    let var_1 = vec4<i32>(~(-46701i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_1(Struct_1(vec2<bool>(true, false), 215f, 2147483647i), vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(-vec3<i32>(30452i, -27782i, 2147483647i), vec3<i32>(1i, 1i, 1i))), firstLeadingBit(~(i32(-1i) * -1i)), select(abs(~1i), abs(reverseBits(-1i)), false)), -21548i, _wgslsmith_sub_i32(~41527i, _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -4573i, -2147483647i), vec3<i32>(-88114i, 1i, 57017i)))) ^ -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(trunc(266f));
    var_0 = ~vec4<u32>(reverseBits(~_wgslsmith_mult_u32(33319u, 37493u)), ~reverseBits(_wgslsmith_clamp_u32(1u, var_0.x, var_0.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.yz, vec2<u32>(3937u, u_input.a.x)) & reverseBits(vec2<u32>(u_input.a.x, u_input.b)), vec2<u32>(reverseBits(u_input.b), abs(0u))), ~(~u_input.a.x));
    var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~541u, min(u_input.b, u_input.a.x), select(u_input.a.x, var_0.x, true), ~1u) & countOneBits(vec4<u32>(var_0.x, u_input.a.x, 35376u, 0u) << (vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_mult_u32(44789u, 0u), 1u, ~u_input.a.x, abs(44659u)), vec4<u32>(_wgslsmith_mult_u32(var_0.x, 34753u) & (u_input.a.x ^ u_input.b), _wgslsmith_sub_u32(u_input.b, 1u), ~(u_input.a.x | u_input.b), 4895u));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, max(vec2<u32>(u_input.a.x << (0u % 32u), u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.wxy, var_0.wyy), u_input.b), var_0.ww)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.zwy, var_0.yyx) >> (vec3<u32>(0u, 15981u, var_0.x) % vec3<u32>(32u)), ~var_0.yzw), var_2);
}

