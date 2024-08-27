struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> bool {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1164f, -504f)), _wgslsmith_f_op_f32(round(236f))))))) - 172f);
    let var_2 = Struct_3(var_0.d, Struct_1(countOneBits(firstTrailingBit(vec2<i32>(arg_1.b.c, arg_1.c.c)) ^ vec2<i32>(-2147483647i, 41062i)), firstTrailingBit(arg_1.e.b & arg_1.b.d.yz) | select(~vec2<u32>(19779u, arg_1.e.d.x), var_0.b.d.yy, select(arg_0.xz, arg_0.xz, arg_0.yz)), min(-arg_2, 32999i), ~countOneBits(arg_1.e.d | vec3<u32>(arg_1.c.b.x, var_0.e.d.x, 15315u))), var_0.e, Struct_2(Struct_1(~(-vec2<i32>(-1600i, -1i)), arg_1.e.b, arg_2 | (arg_2 | u_input.a), min(select(arg_1.c.d, var_0.d.b.d, vec3<bool>(arg_0.x, false, arg_0.x)), vec3<u32>(var_0.d.b.b.x, arg_1.e.b.x, 10540u) << (var_0.c.d % vec3<u32>(32u)))), Struct_1(vec2<i32>(max(1i, arg_1.c.a.x), 0i), vec2<u32>(34059u, 17438u >> (1u % 32u)), -2147483647i, reverseBits(max(vec3<u32>(arg_1.e.b.x, 1u, arg_1.b.d.x), vec3<u32>(1u, 41784u, 0u))))), arg_1.a.b);
    var var_3 = Struct_3(var_0.a, var_0.c, Struct_1(max(global0.yw, vec2<i32>(-1i) * -var_2.e.a), ~(var_2.a.a.b >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_div_i32(-abs(u_input.a), ~_wgslsmith_mult_i32(var_0.a.a.c, -1i)), var_0.d.a.d), Struct_2(var_0.b, var_0.b), var_0.c);
    var var_4 = -1i <= _wgslsmith_div_i32(~var_0.b.a.x, _wgslsmith_mult_i32(~(-var_2.c.c), firstTrailingBit(_wgslsmith_mult_i32(var_0.c.c, u_input.a))));
    return !(arg_0.x | !(!arg_0.x && (arg_0.x || arg_0.x)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = !(!vec4<bool>(select(785f == arg_0.x, func_3(vec3<bool>(true, false, true), Struct_3(Struct_2(Struct_1(global0.zz, vec2<u32>(49890u, 1u), global0.x, vec3<u32>(4294967295u, 32156u, 29311u)), Struct_1(vec2<i32>(1i, global0.x), vec2<u32>(4294967295u, 9616u), -8981i, vec3<u32>(13273u, 4294967295u, 1u))), Struct_1(vec2<i32>(2147483647i, u_input.a), vec2<u32>(19113u, 0u), 56696i, vec3<u32>(4294967295u, 1u, 11906u)), Struct_1(global0.yx, vec2<u32>(1u, 1u), global0.x, vec3<u32>(49275u, 6746u, 121938u)), Struct_2(Struct_1(global0.zy, vec2<u32>(16533u, 1u), u_input.a, vec3<u32>(29214u, 9230u, 4294967295u)), Struct_1(global0.xy, vec2<u32>(4294967295u, 31188u), -22060i, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_1(vec2<i32>(1i, 16842i), vec2<u32>(1u, 11249u), 38636i, vec3<u32>(42668u, 18531u, 1795u))), -1092i), true), true, !any(vec4<bool>(false, true, true, true)), true));
    let var_2 = !vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, false, any(var_1.wwy))), all(vec3<bool>(var_1.x, false | var_1.x, arg_0.x > 635f)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, -452f)) == -1882f, !var_1.x);
    let var_3 = _wgslsmith_f_op_f32(172f - arg_0.x);
    var var_4 = Struct_3(Struct_2(Struct_1(-(~vec2<i32>(1i, u_input.a)), vec2<u32>(43656u << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(21461u, 1u))), max(-u_input.a, ~(-8766i)), vec3<u32>(countOneBits(1u), ~73218u, 4294967295u)), Struct_1(~vec2<i32>(30541i, -31431i), vec2<u32>(1u, 1u), u_input.a & u_input.a, reverseBits(vec3<u32>(0u, 15650u, 91595u)))), Struct_1(~global0.xw, ~vec2<u32>(1u, 1u), _wgslsmith_mod_i32(abs(2147483647i), _wgslsmith_div_i32(firstLeadingBit(u_input.a), global0.x)), ~vec3<u32>(115435u, 1u, 1u)), Struct_1(min(~vec2<i32>(1i, u_input.a), ~vec2<i32>(1i, 1i)), vec2<u32>(~1u, abs(_wgslsmith_add_u32(1u, 1u))), -(~abs(-2147483647i)), ~vec3<u32>(1u, 31688u, 98864u)), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(global0.x, global0.x), global0.yy), abs(vec2<u32>(45984u, 2473u)), ~2147483647i, vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 0u), _wgslsmith_div_u32(5856u, 42273u), ~1u)), Struct_1(~(global0.wy >> (vec2<u32>(1u, 7837u) % vec2<u32>(32u))), ~(~vec2<u32>(20581u, 4294967295u)), _wgslsmith_mod_i32(firstTrailingBit(u_input.a), abs(u_input.a)), ~(~vec3<u32>(0u, 4255u, 34958u)))), Struct_1(vec2<i32>(-u_input.a, global0.x) << (~firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(60869u, 1u), 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 33609u), ~vec2<u32>(23905u, 0u))), max(u_input.a, -1i), ~(select(vec3<u32>(91740u, 4294967295u, 25116u), vec3<u32>(24544u, 0u, 42972u), vec3<bool>(true, var_2.x, false)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 52998u), vec3<u32>(38348u, 4294967295u, 42642u)))));
    return Struct_1(vec2<i32>(reverseBits(79628i), abs(min(u_input.a, ~14574i))), var_4.a.a.d.zx, u_input.a, vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(18354u, 4294967295u, var_4.a.b.b.x, 610u), vec4<u32>(80215u, var_4.a.a.d.x, var_4.c.d.x, 46489u) & vec4<u32>(40408u, var_4.c.b.x, var_4.c.b.x, var_4.b.d.x)), ~(~var_4.e.d.x)), 5840u));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_2(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2023f), arg_0)), Struct_1(~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, -557f))).a, ~vec2<u32>(1u, arg_2.x), _wgslsmith_add_i32(~global0.x, 2147483647i), arg_1.d));
    var var_1 = vec2<bool>(!(!(!func_3(vec3<bool>(false, false, false), Struct_3(Struct_2(var_0.a, Struct_1(vec2<i32>(-1i, -35425i), vec2<u32>(arg_2.x, 0u), u_input.a, vec3<u32>(arg_2.x, 86159u, arg_1.b.x))), Struct_1(var_0.a.a, vec2<u32>(4294967295u, arg_1.b.x), -2147483647i, vec3<u32>(4294967295u, arg_2.x, 41577u)), Struct_1(vec2<i32>(arg_1.c, -39839i), arg_2, 30806i, var_0.b.d), Struct_2(Struct_1(vec2<i32>(var_0.b.a.x, global0.x), vec2<u32>(4294967295u, 4294967295u), global0.x, vec3<u32>(arg_2.x, var_0.a.b.x, 0u)), Struct_1(arg_1.a, vec2<u32>(6651u, 1u), arg_1.a.x, arg_1.d)), Struct_1(vec2<i32>(42213i, -1i), arg_2, -1i, vec3<u32>(4294967295u, arg_2.x, arg_1.b.x))), 28924i))), any(vec4<bool>(arg_0 <= _wgslsmith_f_op_f32(-arg_0), false, true, 567f < _wgslsmith_f_op_f32(-arg_0))));
    let var_2 = vec3<f32>(arg_0, 1511f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), 1536f))));
    var var_3 = min(arg_2.x, ~(~(~1u)));
    var_3 = _wgslsmith_mult_u32(17496u, 11607u) | ~arg_2.x;
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.d.a;
    var var_1 = -vec4<i32>(-func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1080f, -714f) + arg_1.a)).a.x, _wgslsmith_dot_vec2_i32(var_0.a, var_0.a) ^ -max(37779i, 9139i), _wgslsmith_sub_i32(4967i, ~firstLeadingBit(-29889i)), arg_1.d.b.c);
    let var_2 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(max(_wgslsmith_mult_vec2_i32(var_1.yz, firstTrailingBit(vec2<i32>(-19140i, 12303i))), vec2<i32>(~var_1.x, i32(-1i) * -1i)), abs(~vec2<i32>(arg_1.c.c.x, -31565i) ^ func_2(arg_1.a).a)), ~vec2<u32>(1u, max(_wgslsmith_mod_u32(arg_1.d.b.d.x, arg_1.c.a.a.d.x), arg_1.c.d)), var_1.x, vec3<u32>(firstTrailingBit(62835u), ~firstTrailingBit(5503u), ~1u));
    return !arg_1.c.b.x;
}

fn func_1() -> Struct_5 {
    global0 = -abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, global0.x) & vec4<i32>(-1i, -36569i, u_input.a, -2147483647i), -vec4<i32>(global0.x, 0i, -24627i, u_input.a)) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 70074u), ~vec4<u32>(33421u, 8074u, 47910u, 0u)) % vec4<u32>(32u)));
    let var_0 = vec3<bool>(func_5(vec4<bool>(true, func_4(_wgslsmith_f_op_f32(-1859f + 175f), func_2(vec2<f32>(-821f, -176f)), vec2<u32>(12193u, 0u)), _wgslsmith_f_op_f32(sign(-324f)) < _wgslsmith_f_op_f32(trunc(-963f)), any(vec2<bool>(true, true)) || true), Struct_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(641f, 998f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, u_input.a, global0.x, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, -56867i, -63937i, global0.x)) & ~vec4<i32>(global0.x, u_input.a, global0.x, -27151i), Struct_4(Struct_2(Struct_1(global0.xw, vec2<u32>(14512u, 38144u), -54762i, vec3<u32>(0u, 35530u, 0u)), Struct_1(global0.xx, vec2<u32>(4447u, 36597u), 1i, vec3<u32>(35714u, 520u, 4294967295u))), vec4<bool>(true, true, true, true), vec4<i32>(0i, -27446i, u_input.a, 0i), _wgslsmith_mod_u32(69423u, 8067u), _wgslsmith_div_f32(-657f, -1000f)), Struct_2(Struct_1(vec2<i32>(1i, u_input.a), vec2<u32>(4294967295u, 30u), 57010i, vec3<u32>(4294967295u, 28257u, 0u)), func_2(vec2<f32>(1515f, 525f))))), (!all(vec3<bool>(false, true, false)) | true) & func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true), Struct_3(Struct_2(Struct_1(global0.zx, vec2<u32>(6230u, 14325u), global0.x, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(global0.yz, vec2<u32>(27556u, 4294967295u), u_input.a, vec3<u32>(46128u, 0u, 37147u))), func_2(vec2<f32>(-1530f, 442f)), Struct_1(vec2<i32>(u_input.a, 8156i), vec2<u32>(1u, 0u), -9493i, vec3<u32>(1u, 0u, 0u)), Struct_2(Struct_1(global0.yz, vec2<u32>(0u, 9585u), global0.x, vec3<u32>(34018u, 1u, 1u)), Struct_1(vec2<i32>(u_input.a, global0.x), vec2<u32>(25323u, 1u), -14388i, vec3<u32>(2431u, 26446u, 1u))), func_2(vec2<f32>(560f, -387f))), ~(i32(-1i) * -26310i)), false);
    var var_1 = select(func_5(vec4<bool>(all(vec4<bool>(true, var_0.x, false, false)) | var_0.x, false, global0.x != -u_input.a, true), Struct_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-496f, -643f) - vec2<f32>(1062f, 1413f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-120f, -453f), vec2<f32>(2533f, 215f))))), max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global0.x, u_input.a, 2147483647i), vec4<i32>(46968i, u_input.a, u_input.a, global0.x)), firstTrailingBit(vec4<i32>(-1i, global0.x, -3994i, global0.x))), Struct_4(Struct_2(Struct_1(global0.xy, vec2<u32>(4294967295u, 27120u), -44907i, vec3<u32>(0u, 29519u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, 2203i), vec2<u32>(1u, 36985u), u_input.a, vec3<u32>(76288u, 1u, 0u))), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), -vec4<i32>(global0.x, global0.x, u_input.a, global0.x), ~24513u, -286f), Struct_2(Struct_1(global0.zw, vec2<u32>(17614u, 4294967295u), 30988i, vec3<u32>(64146u, 41750u, 4294967295u)), Struct_1(vec2<i32>(global0.x, -45792i), vec2<u32>(21482u, 35778u), 10917i, vec3<u32>(45850u, 29539u, 44885u))))), !(!var_0.x), var_0.x);
    global0 = _wgslsmith_sub_vec4_i32(reverseBits(~vec4<i32>(countOneBits(-25405i), u_input.a, 1i, _wgslsmith_sub_i32(u_input.a, global0.x))), ~(-vec4<i32>(-43995i, 2147483647i, countOneBits(global0.x), 1i)));
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-328f, 1000f), vec2<f32>(-775f, -495f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -462f), vec2<f32>(956f, -1369f))), vec2<f32>(698f, -1164f)))), countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, global0.x, u_input.a, global0.x), ~vec4<i32>(u_input.a, global0.x, u_input.a, global0.x), select(vec4<i32>(2147483647i, -45264i, u_input.a, u_input.a), vec4<i32>(global0.x, global0.x, 1436i, global0.x), true)), ~(~vec4<i32>(5814i, -2147483647i, -2147483647i, global0.x)))), Struct_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(2020f, 125f) - vec2<f32>(763f, -2113f))), Struct_1(select(global0.yz, vec2<i32>(-31454i, 0i), true), vec2<u32>(0u, 0u), 16351i, ~vec3<u32>(19250u, 0u, 52411u))), select(vec4<bool>(!var_0.x, var_0.x, true, !var_0.x), select(!vec4<bool>(false, var_0.x, false, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), all(vec4<bool>(var_0.x, false, var_0.x, true))), any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.zxx, global0.xzw), u_input.a), ~(~global0.x), -22350i, u_input.a & firstLeadingBit(-2147483647i)), ~4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(195f, -585f)))))), Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(-global0.zy, _wgslsmith_mod_vec2_i32(global0.xy, vec2<i32>(u_input.a, u_input.a))), ~(~vec2<u32>(4294967295u, 0u)), 1i, _wgslsmith_div_vec3_u32(~vec3<u32>(22461u, 1u, 4294967295u), abs(vec3<u32>(6622u, 1u, 2919u)))), func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, -190f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ((!(var_0.c.b.x == true) && func_5(var_0.c.b, var_0)) & var_0.c.b.x) && var_0.c.b.x;
    let var_2 = vec3<f32>(-160f, func_1().a.x, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_add_u32(var_0.d.b.b.x, var_0.d.a.d.x) << (func_1().c.d % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a.d.x, var_0.d.b.b.x) & _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.d.b.d.zz), vec2<u32>(var_0.d.a.b.x, var_0.c.a.a.b.x)), var_0.c.b.x));
}

