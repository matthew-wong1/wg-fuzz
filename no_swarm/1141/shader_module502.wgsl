struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.b;
    var var_1 = Struct_2(!vec2<bool>(all(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), Struct_1(any(vec2<bool>(true, true)), vec3<i32>(70520i, u_input.b ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, -2147483647i), vec4<i32>(0i, -4084i, -2147483647i, 15119i)), 0i), 69516u, ~_wgslsmith_mult_u32(u_input.a.x << (0u % 32u), 60170u)), Struct_1(((var_0 >> (u_input.a.x % 32u)) <= var_0) | (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) > u_input.a.x), _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0, u_input.b, var_0) ^ (vec3<i32>(u_input.b, -12285i, -5662i) << (u_input.a.wwx % vec3<u32>(32u))), abs(~vec3<i32>(-2147483647i, 16528i, var_0))), _wgslsmith_div_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), u_input.a.x ^ 14934u), 18243u), 1u), ~u_input.a.x >> (u_input.a.x % 32u));
    var var_2 = !vec4<bool>(!any(vec4<bool>(var_1.a.x, var_1.c.a, var_1.b.a, false)), all(vec4<bool>(var_1.c.a, true, true, true)), !(var_1.c.d >= _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), true);
    var_2 = !(!select(vec4<bool>(!var_2.x, true, var_2.x, false), select(!vec4<bool>(true, var_2.x, false, var_2.x), !vec4<bool>(true, var_2.x, var_2.x, var_1.a.x), vec4<bool>(var_2.x, var_1.a.x, var_2.x, false)), true & var_1.a.x));
    var_1 = Struct_2(select(var_1.a, select(var_1.a, var_1.a, false), vec2<bool>(true, var_2.x)), var_1.c, Struct_1(any(vec3<bool>(true, var_1.b.a, var_2.x)) && false, var_1.c.b, ~1u ^ u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy) >> (~vec2<u32>(var_1.d, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(reverseBits(0u), ~45572u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(45063u, 10415u, var_1.c.c, 93035u), min(u_input.a, u_input.a)), ~reverseBits(4294967295u)));
    return select(select(vec2<bool>(all(select(vec2<bool>(var_2.x, false), var_2.yy, var_2.x)), var_2.x), var_1.a, select(vec2<bool>(true, true), select(!vec2<bool>(true, var_2.x), select(vec2<bool>(var_1.b.a, true), var_1.a, var_1.c.a), !var_2.x), var_1.a)), vec2<bool>(any(vec3<bool>(var_1.b.a, true, true)), true | select(var_2.x, !var_1.c.a, true)), all(var_2.yx));
}

fn func_2(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = func_3();
    var var_1 = ~(-(~vec4<i32>(_wgslsmith_div_i32(0i, u_input.b), u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b), -12103i)));
    let var_2 = Struct_4(~u_input.a.zw);
    var_1 = reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(i32(-1i) * -36936i, ~30200i, u_input.b, -1i), vec4<i32>(var_1.x, u_input.b, -2147483647i, -42088i ^ -var_1.x)));
    return vec3<f32>(-943f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) * 334f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(354f, _wgslsmith_f_op_f32(select(1235f, 377f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1243f * -1219f), 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1273f + -2169f), -166f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: i32) -> vec3<bool> {
    var var_0 = false;
    var_0 = !(!(func_3().x != true)) && !(!func_3().x);
    var_0 = select(!((all(vec2<bool>(false, false)) | true) || any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), true, any(!vec4<bool>(true, select(true, true, true), true, 2147483647i != arg_3)));
    var_0 = (u_input.b >> (~(~arg_2) % 32u)) >= -33537i;
    var var_1 = 153f;
    return select(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), !select(vec3<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(true, true))), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, false, true)));
}

fn func_1() -> Struct_5 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(539f * 274f), -752f, -113f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec3<u32>(u_input.a.x, 48418u, 0u)))) * _wgslsmith_f_op_vec3_f32(func_2(u_input.a.wwz & u_input.a.www)))), _wgslsmith_dot_vec3_u32(~(~min(u_input.a.zyy, vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~(~(vec3<u32>(0u, 4294967295u, 28456u) | vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), 42904u, -7931i);
    let var_1 = Struct_1(all(select(select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)), !select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true)), firstTrailingBit(~vec3<i32>(-u_input.b, -u_input.b, 2147483647i | u_input.b)), 12383u, ~(countOneBits(u_input.a.x) ^ _wgslsmith_sub_u32(u_input.a.x, 71600u)) | ~u_input.a.x);
    let var_2 = _wgslsmith_div_vec3_u32(u_input.a.zzy, u_input.a.zzz);
    var var_3 = Struct_1(all(var_0.yx), ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(33281i, u_input.b), var_1.b.x, ~var_1.b.x), vec3<i32>(-52942i, -var_1.b.x, -var_1.b.x)), 1u, _wgslsmith_sub_u32(var_2.x, var_1.c));
    var var_4 = true;
    return Struct_5(reverseBits(~0u), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(func_3().x, _wgslsmith_sub_vec3_i32(var_3.b, var_3.b), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(38585u, 179u, var_2.x), vec3<u32>(u_input.a.x, u_input.a.x, var_2.x))), var_1, _wgslsmith_mult_u32(var_3.c, firstLeadingBit(1u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), min(u_input.a.x, var_2.x), 14651u, 1u), _wgslsmith_clamp_vec4_u32(abs(u_input.a), vec4<u32>(0u, var_2.x, u_input.a.x, 36787u) & u_input.a, vec4<u32>(u_input.a.x, 293u, var_2.x, var_2.x)))), ~abs(var_3.b));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    let var_0 = vec2<bool>(arg_0.b.a.c.a, !(_wgslsmith_f_op_f32(-2131f + _wgslsmith_f_op_f32(trunc(-643f))) > _wgslsmith_f_op_f32(max(-1000f, -116f))));
    let var_1 = arg_0.b.a;
    var var_2 = _wgslsmith_dot_vec3_i32(var_1.b.b ^ abs(arg_0.b.a.b.b), var_1.b.b);
    var var_3 = vec4<f32>(1097f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-669f + 270f)))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1292f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)))));
    let var_4 = Struct_2(vec2<bool>(arg_0.b.a.b.a, true), var_1.b, Struct_1(~max(u_input.b, 2147483647i) <= 1i, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1552i, 1i, 10797i) ^ vec3<i32>(17978i, arg_0.c.x, u_input.b)), vec3<i32>(abs(var_1.c.b.x), -arg_0.c.x, 10230i)), _wgslsmith_div_u32(68348u, _wgslsmith_dot_vec3_u32(~u_input.a.zyw, firstTrailingBit(vec3<u32>(0u, arg_0.b.a.d, 69952u)))), u_input.a.x), arg_0.a);
    return Struct_4(arg_0.b.b.wy);
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: i32) -> Struct_3 {
    var var_0 = func_3();
    let var_1 = ~(~u_input.a.x);
    let var_2 = vec3<bool>(var_0.x, (any(vec2<bool>(var_0.x, false)) & true) & true, all(select(select(select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, false, var_0.x)), false), select(!vec4<bool>(var_0.x, false, true, false), !vec4<bool>(false, false, false, var_0.x), true), vec4<bool>(var_0.x, var_0.x, true, false))));
    var var_3 = Struct_5(40615u, func_1().b, ~vec3<i32>(firstTrailingBit(arg_2) >> (~arg_1 % 32u), arg_2, _wgslsmith_dot_vec4_i32(vec4<i32>(-51871i, arg_2, u_input.b, u_input.b) << (u_input.a % vec4<u32>(32u)), max(vec4<i32>(-44030i, 1i, 0i, arg_2), vec4<i32>(arg_2, -2147483647i, -38752i, arg_2)))));
    let var_4 = func_1();
    return Struct_3(var_3.b.a, _wgslsmith_add_vec4_u32(~vec4<u32>(var_3.a, u_input.a.x, var_4.b.b.x, 11199u) >> (~_wgslsmith_mult_vec4_u32(var_4.b.b, vec4<u32>(4446u, arg_1, var_4.a, var_4.b.b.x)) % vec4<u32>(32u)), var_4.b.b));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_5) -> Struct_1 {
    var var_0 = Struct_1(!(!(!arg_0.a.a.x || func_6(Struct_4(vec2<u32>(44770u, arg_1.a)), 0u, -2147483647i).a.b.a)), firstLeadingBit(arg_1.c), ~0u >> (countOneBits(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.a.b.c, u_input.a.x), _wgslsmith_div_u32(0u, 11129u))) % 32u), firstTrailingBit(arg_0.a.c.c));
    var_0 = arg_1.b.a.c;
    var var_1 = ~arg_1.b.a.b.d;
    let var_2 = Struct_3(Struct_2(func_6(Struct_4(u_input.a.yx), _wgslsmith_sub_u32(arg_1.a, 19649u), -1i).a.a, arg_1.b.a.b, func_6(func_5(Struct_5(var_0.c, Struct_3(arg_1.b.a, vec4<u32>(0u, 4294967295u, 0u, 45279u)), arg_1.c)), 82333u, ~select(42068i, 13392i, true)).a.c, max(1u, ~func_1().a)), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(abs(~5858u), _wgslsmith_div_u32(~4294967295u, reverseBits(arg_1.a))), arg_1.a, abs(_wgslsmith_sub_u32(min(4294967295u, 4538u), 0u))));
    var_1 = arg_0.b.x;
    return func_6(func_5(func_1()), 0u, (1i << (reverseBits(_wgslsmith_add_u32(var_2.b.x, var_2.a.d)) % 32u)) << (_wgslsmith_mult_u32(var_2.b.x, _wgslsmith_add_u32(arg_1.a, 37996u)) % 32u)).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_1()), 0u, u_input.b), Struct_5(u_input.a.x, Struct_3(Struct_2(vec2<bool>(true, true), func_6(Struct_4(vec2<u32>(1u, 1u)), 4294967295u, 1i).a.c, Struct_1(false, vec3<i32>(-2147483647i, u_input.b, u_input.b), u_input.a.x, 4294967295u), _wgslsmith_mod_u32(19631u, u_input.a.x)), (vec4<u32>(u_input.a.x, 61668u, u_input.a.x, 4294967295u) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) % vec4<u32>(32u))) | reverseBits(vec4<u32>(1u, 104561u, u_input.a.x, u_input.a.x))), select(vec3<i32>(-2147483647i, u_input.b, abs(1i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(0i, u_input.b, 10003i), -vec3<i32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
    let var_1 = var_0;
    var var_2 = func_5(Struct_5(func_1().a >> (0u % 32u), Struct_3(Struct_2(select(vec2<bool>(true, var_0.a), vec2<bool>(false, false), vec2<bool>(var_1.a, false)), Struct_1(false, vec3<i32>(-1i, u_input.b, -1i), var_0.d, var_1.d), var_1, var_1.d), vec4<u32>(u_input.a.x, ~var_1.c, var_1.d, u_input.a.x << (7732u % 32u))), var_1.b));
    var_2 = func_5(Struct_5(abs(6586u) & ~var_0.d, func_6(Struct_4(firstTrailingBit(vec2<u32>(1u, var_2.a.x))), _wgslsmith_mod_u32(0u, 102486u) >> (u_input.a.x % 32u), _wgslsmith_add_i32(var_1.b.x, u_input.b)), _wgslsmith_clamp_vec3_i32(-(var_1.b | var_1.b), _wgslsmith_clamp_vec3_i32(abs(var_0.b), _wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(u_input.b, -22851i, var_1.b.x)), -var_1.b), -vec3<i32>(var_1.b.x, var_1.b.x, -6723i))));
    var var_3 = true;
    let var_4 = _wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(round(1000f)));
    let var_5 = !((firstTrailingBit(-27936i) << ((var_0.d ^ abs(u_input.a.x)) % 32u)) != ~(select(u_input.b, 84935i, false) << (u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(48829u, ~abs(_wgslsmith_sub_i32(func_6(Struct_4(u_input.a.wz), var_0.d, u_input.b).a.c.b.x, -var_1.b.x)), u_input.a.yyy);
}

