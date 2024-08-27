struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(30359u, 14515u, 63094u, 22133u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), ~vec4<u32>(arg_2.x, arg_2.x, 52324u, 58314u)) % vec4<u32>(32u)), vec4<u32>(31565u, ~1u, firstTrailingBit(16853u), 24483u)) << (min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(49713u, arg_2.x, 1u, 4294967295u), abs(vec4<u32>(arg_2.x, 1u, arg_2.x, 1657u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, arg_2.x, arg_2.x, 3723u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 0u, 1u, arg_2.x), ~vec4<u32>(1u, 1u, arg_2.x, 69827u)))) % vec4<u32>(32u));
    var var_1 = ~abs(arg_0);
    let var_2 = Struct_1(-arg_1.a.e.a, -firstLeadingBit(vec3<i32>(countOneBits(-1i), abs(-1i), max(-4137i, arg_1.a.d))), ~(~firstTrailingBit(arg_1.a.d >> (arg_2.x % 32u))), -(~vec3<i32>(52905i, ~arg_1.a.e.a.x, -arg_1.a.d)));
    let var_3 = arg_1.a.d;
    let var_4 = Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.a.c)) - vec2<f32>(arg_1.a.a.x, arg_1.a.c.x)), vec4<bool>(true, !arg_1.a.b.x, any(arg_1.b.xx), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.a)) - _wgslsmith_f_op_vec2_f32(-arg_1.a.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, arg_0), vec3<i32>(2276i, var_2.b.x, arg_0)) & countOneBits(0i), var_2), select(select(vec3<bool>(arg_1.b.x, arg_1.a.b.x, arg_1.a.b.x), arg_1.a.b.zyw, arg_1.a.b.x != arg_1.b.x), arg_1.b, arg_1.a.b.yyw)));
    return var_0.x;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.a), !(!(!vec4<bool>(arg_2.x, true, false, arg_2.x))), arg_0.a.a.a, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(18298i, 1i), -4380i), Struct_1(vec4<i32>(firstLeadingBit(arg_0.a.a.e.d.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, -16419i)), arg_0.a.a.e.a.yy), _wgslsmith_mult_i32(2147483647i, arg_0.a.a.d), max(2147483647i, ~arg_3.a.x)), _wgslsmith_mod_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.a.d, arg_3.b.x, arg_3.d.x), arg_3.a.wzx), -vec3<i32>(2147483647i, arg_3.a.x, u_input.a)), vec3<i32>(abs(-6407i), i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(arg_3.d, vec3<i32>(57957i, arg_3.d.x, -13434i)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_3.b, arg_0.a.a.e.a.wzx), min(arg_0.a.a.e.d, vec3<i32>(arg_3.c, 39197i, -23081i))), arg_0.a.a.e.d & (vec3<i32>(-2147483647i, -2147483647i, arg_3.c) >> (vec3<u32>(1u, 11548u, 49662u) % vec3<u32>(32u)))));
    let var_1 = Struct_4(arg_0.a);
    let var_2 = min(abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, ~17706u), 4294967295u)), 1u);
    var var_3 = arg_2.x;
    var_3 = var_2 > _wgslsmith_clamp_u32(var_2, func_3(arg_3.d.x, Struct_3(var_1.a.a, select(var_0.b.wyw, vec3<bool>(var_1.a.b.x, var_0.b.x, arg_0.a.a.b.x), var_1.a.b)), ~select(vec2<u32>(1u, var_2), vec2<u32>(0u, 35027u), arg_2)), 0u);
    return var_2;
}

fn func_1() -> bool {
    let var_0 = Struct_1(-(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 9887i, u_input.a), firstLeadingBit(vec4<i32>(11839i, -1i, 882i, -30612i))) >> (vec4<u32>(1u, ~17886u, 0u, 1u) % vec4<u32>(32u))), -vec3<i32>(~(i32(-1i) * -25579i), _wgslsmith_mult_i32(0i, u_input.b), ~(-8793i)), _wgslsmith_div_i32(abs(-(u_input.a << (1u % 32u))), i32(-1i) * -(u_input.a ^ u_input.a)), vec3<i32>(u_input.a, u_input.b, -(~u_input.b | countOneBits(-4421i))));
    let var_1 = ~(1i ^ u_input.a);
    let var_2 = !all(vec4<bool>(true, true, true, true)) || true;
    var var_3 = _wgslsmith_mod_u32(~abs(4294967295u) | func_2(Struct_4(Struct_3(Struct_2(vec2<f32>(576f, -543f), vec4<bool>(false, var_2, false, true), vec2<f32>(2820f, 864f), u_input.b, var_0), vec3<bool>(false, var_2, true))), 0i, vec2<bool>(any(vec3<bool>(false, false, var_2)), false), var_0), _wgslsmith_sub_u32(_wgslsmith_add_u32(27546u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 87466u), vec3<u32>(38737u, 4294967295u, 1u))), 4294967295u) | ~abs(~22928u));
    var_3 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~37717u, ~55580u, ~1u), reverseBits(77501u)) >> (4294967295u % 32u);
    return var_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 48994u), ~vec2<u32>(4294967295u, 6865u))), ~select(1u, 1u, false), _wgslsmith_add_u32(18990u, ~(~firstLeadingBit(8450u))));
    var_0 = _wgslsmith_mod_u32(~(~(~_wgslsmith_mult_u32(0u, 0u))), 12632u);
    var_0 = ~18427u;
    var var_1 = !arg_2.x;
    var_1 = _wgslsmith_mod_u32(func_3(-6854i, Struct_3(Struct_2(vec2<f32>(-795f, 1530f), arg_2, vec2<f32>(1346f, 495f), 2147483647i, Struct_1(vec4<i32>(-2147483647i, 57062i, u_input.b, u_input.a), arg_3, -13201i, vec3<i32>(-2147483647i, 1i, u_input.b))), arg_2.xzz), vec2<u32>(_wgslsmith_sub_u32(20318u, 8393u), 1u)), abs(_wgslsmith_clamp_u32(58610u, 1u, 1u))) > _wgslsmith_sub_u32(~1u, 25707u);
    return firstTrailingBit(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(453f, _wgslsmith_f_op_f32(f32(-1f) * -1047f));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(1u, 1u), -1882f, -13366i, _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(48355u, 31069u, 112755u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(_wgslsmith_add_u32(~23692u, _wgslsmith_add_u32(0u, 17600u)), 1u, ~35383u, 1u), func_4(-firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, 1i))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-1979f)) < -1359f), vec4<bool>(true, func_1(), false, any(vec4<bool>(false, true, false, true))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 40028i, -1i), vec3<i32>(u_input.b, -6477i, -26783i), vec3<i32>(u_input.b, -2147483647i, u_input.a)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(19805u, 4294967295u, 20275u), vec3<u32>(62557u, 1u, 17905u)) % vec3<u32>(32u)), ~max(vec3<i32>(8809i, 60696i, -27536i), vec3<i32>(u_input.b, -26274i, u_input.b)), vec3<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(false, false)), true))));
}

