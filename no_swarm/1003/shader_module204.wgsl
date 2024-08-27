struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -43001i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = abs(85475i);
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~(63174u & arg_1.b.d), arg_1.b.d), (max(30955u, arg_1.b.d) | _wgslsmith_clamp_u32(0u, 71987u, 49392u)) & ~0u), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_1.b.d, 4294967295u)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, 19809u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 20068u), vec2<u32>(arg_1.b.d, arg_1.b.d))), vec2<u32>(_wgslsmith_mult_u32(arg_1.b.d, ~1u), 1420u)));
    var var_1 = Struct_4(arg_1, abs(vec2<i32>(u_input.a.x, 0i)), vec4<bool>(!(!(false || arg_1.b.b.x)), (true == any(vec4<bool>(arg_0, true, arg_1.b.a.x, true))) | all(!arg_1.a), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c - 2889f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f * arg_1.b.c))));
    global0 = u_input.a.x;
    let var_2 = select(_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, var_0.x, 3453u, 0u), abs(~vec4<u32>(arg_1.b.d, 0u, 97441u, 21274u)), select(var_1.c, vec4<bool>(arg_0, arg_0, var_1.c.x, false), arg_1.b.b.x)), vec4<u32>(0u, arg_1.b.d, _wgslsmith_clamp_u32(firstLeadingBit(var_0.x), firstTrailingBit(var_0.x), ~var_0.x), _wgslsmith_mult_u32(~arg_1.b.d, var_0.x))), (vec4<u32>(reverseBits(var_0.x), ~1u, 0u, var_0.x) << (~vec4<u32>(var_1.a.b.d, var_0.x, var_0.x, 27804u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, var_0.x, 4294967295u, 55690u), ~vec4<u32>(1u, var_0.x, var_1.a.b.d, var_1.a.b.d)), firstTrailingBit(vec4<u32>(1u, arg_1.b.d, 40468u, arg_1.b.d))), select(vec4<bool>(any(vec4<bool>(arg_0, true, true, false)), !var_1.a.a.x, arg_0, !any(var_1.c)), select(!var_1.c, !select(vec4<bool>(true, true, arg_0, var_1.a.b.a.x), vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true)), any(select(vec2<bool>(true, arg_1.b.a.x), arg_1.a, var_1.a.b.b.x))), any(arg_1.b.a)));
    return firstTrailingBit(var_1.a.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = func_3(!(!(!all(vec4<bool>(false, false, false, false)))), Struct_2(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1647f)) + 283f), 37741u), u_input.a.x), max(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 37334i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -45333i, 2147483647i, 35327i)), ~(~vec4<i32>(8097i, u_input.a.x, -1i, u_input.a.x))), min(-(~(-2147483647i)), _wgslsmith_div_i32(-u_input.a.x, u_input.a.x >> (arg_0.x % 32u)))));
    let var_0 = vec4<i32>(24099i, 43112i, -1i, 0i);
    global0 = ~(-_wgslsmith_dot_vec4_i32(~var_0, _wgslsmith_sub_vec4_i32(var_0, select(var_0, var_0, vec4<bool>(false, false, false, false)))));
    global0 = firstLeadingBit(abs(var_0.x));
    let var_1 = Struct_4(Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), reverseBits(arg_0.x)), _wgslsmith_dot_vec3_i32(-(u_input.a & var_0.wwx), _wgslsmith_clamp_vec3_i32(vec3<i32>(27856i, -1i, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(var_0.x, u_input.a.x, u_input.a.x), var_0.xzw), _wgslsmith_sub_vec3_i32(var_0.yyx, vec3<i32>(var_0.x, -2137i, 25573i))))), abs(vec2<i32>(-39496i, 37882i)), !(!vec4<bool>(any(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, false)), false, false)));
    return var_1.a.b.b;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global0 = abs(abs((min(-1i, -1i) ^ u_input.a.x) ^ max(u_input.a.x << (0u % 32u), u_input.a.x)));
    var var_0 = u_input.a.zz;
    var var_1 = arg_2;
    var var_2 = Struct_3(arg_2.a, Struct_1(vec3<bool>(_wgslsmith_mult_u32(1u, arg_3.d) != firstTrailingBit(arg_2.b.d), !arg_2.b.a.x, !all(arg_3.b)), !func_2(firstLeadingBit(vec2<u32>(78255u, arg_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(338f, arg_2.b.c, arg_2.a.c, arg_2.b.c)))), var_1.b.c, arg_2.b.d | 1u));
    var_0 = vec2<i32>(u_input.a.x, 46052i);
    return Struct_1(select(select(!arg_2.b.b, arg_1.ywy, !select(vec3<bool>(var_2.a.a.x, false, var_2.b.a.x), var_1.b.b, vec3<bool>(var_1.b.a.x, false, false))), arg_3.b, select(arg_3.b.x, true, (arg_3.b.x && false) & all(vec2<bool>(true, var_2.a.b.x)))), func_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.a.d) >> (vec2<u32>(arg_2.b.d, arg_3.d) % vec2<u32>(32u)), select(vec2<u32>(4294967295u, arg_3.d), vec2<u32>(1u, 2970u), false), ~vec2<u32>(var_2.b.d, 54101u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c))), var_1.b.c, 1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.c))))), -614f, firstLeadingBit(40319u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_0.a.d, arg_2.d), firstTrailingBit(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(arg_1.x, 20326u), vec2<u32>(24067u, arg_2.d), arg_0.a.b.x == true), max(vec2<u32>(30548u, 35362u) & vec2<u32>(arg_1.x, 36900u), abs(vec2<u32>(4294967295u, arg_2.d))))));
    let var_1 = vec2<i32>(-(12847i ^ _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xy), abs(vec2<i32>(16458i, u_input.a.x)))), _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yy), -firstLeadingBit(firstLeadingBit(u_input.a.xy))));
    var var_2 = !select(select(!vec4<bool>(false, arg_2.b.x, arg_2.b.x, false), !vec4<bool>(arg_0.a.a.x, false, arg_0.a.b.x, arg_0.a.b.x), vec4<bool>(arg_0.b.b.x, !arg_2.b.x, arg_0.b.a.x, all(vec4<bool>(arg_2.b.x, arg_2.a.x, true, false)))), !(!(!vec4<bool>(arg_2.b.x, arg_2.a.x, false, arg_0.a.a.x))), false);
    var var_3 = _wgslsmith_dot_vec3_i32(reverseBits(-_wgslsmith_sub_vec3_i32(u_input.a, -vec3<i32>(var_1.x, -2147483647i, u_input.a.x))), vec3<i32>(~(~(-1i)), _wgslsmith_sub_i32(u_input.a.x, var_1.x), u_input.a.x));
    var var_4 = any(vec4<bool>(true, !all(arg_0.b.a), arg_2.a.x, true)) == var_2.x;
    return vec3<bool>(func_2(vec2<u32>(~38794u, _wgslsmith_dot_vec3_u32(arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(706f, arg_0.a.c, -276f, arg_2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, -997f, arg_0.a.c, arg_0.b.c)), select(vec4<bool>(true, arg_2.b.x, true, true), vec4<bool>(arg_0.b.b.x, arg_0.a.b.x, false, arg_2.a.x), var_2.x)))).x & any(arg_0.b.b), all(select(!select(vec4<bool>(false, arg_0.a.a.x, var_2.x, arg_2.a.x), vec4<bool>(false, arg_2.b.x, arg_0.b.a.x, var_2.x), vec4<bool>(true, arg_2.a.x, false, var_2.x)), !(!vec4<bool>(true, arg_0.a.b.x, false, arg_0.b.b.x)), !select(vec4<bool>(var_2.x, arg_2.a.x, false, false), vec4<bool>(arg_2.a.x, true, var_2.x, false), arg_0.b.a.x))), var_2.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = !(!any(select(vec4<bool>(true, arg_1.b.x, arg_1.a.x, true), select(vec4<bool>(false, arg_1.a.x, arg_1.b.x, arg_1.a.x), vec4<bool>(false, false, arg_1.b.x, true), true), any(vec4<bool>(arg_1.a.x, false, arg_1.b.x, arg_1.b.x)))));
    global0 = -21949i;
    global0 = abs(u_input.a.x);
    var var_1 = _wgslsmith_clamp_u32(min(arg_1.d >> (arg_0.x % 32u), reverseBits(arg_1.d)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1.d, arg_0.x, arg_1.d) << (_wgslsmith_mult_vec4_u32(vec4<u32>(11800u, 4294967295u, 4294967295u, 46330u), vec4<u32>(arg_1.d, arg_1.d, 9328u, arg_0.x)) % vec4<u32>(32u)), abs(abs(vec4<u32>(4294967295u, arg_0.x, 7735u, 4294967295u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.d, _wgslsmith_add_u32(16357u, arg_1.d), ~arg_1.d, ~arg_0.x), abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, arg_0.x, arg_0.x, 51320u), vec4<u32>(28004u, arg_1.d, 20358u, arg_1.d))))), 56572u);
    let var_2 = Struct_3(func_1(57027u, !(!vec4<bool>(false, var_0, arg_1.a.x, true)), Struct_3(Struct_1(vec3<bool>(false, var_0, true), func_2(arg_0.xz, vec4<f32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c)), _wgslsmith_div_f32(arg_1.c, -1026f), _wgslsmith_sub_u32(arg_0.x, 1u)), Struct_1(!arg_1.b, vec3<bool>(true, var_0, arg_1.b.x), 894f, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, arg_1.d, arg_0.x)))), func_1(1u, select(!vec4<bool>(arg_1.a.x, var_0, true, true), vec4<bool>(false, false, true, false), false), Struct_3(arg_1, arg_1), Struct_1(vec3<bool>(var_0, false, false), !arg_1.a, func_1(48886u, vec4<bool>(var_0, arg_1.a.x, true, arg_1.b.x), Struct_3(arg_1, Struct_1(arg_1.a, vec3<bool>(true, var_0, false), 1052f, 77553u)), arg_1).c, reverseBits(arg_1.d)))), arg_1);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(firstTrailingBit(vec3<u32>(1u, 77949u, 1u)), ~(~(~vec3<u32>(62525u, 1188u, 26336u))), vec3<bool>(true, true, true)), Struct_1(func_4(Struct_3(func_1(4294967295u, vec4<bool>(false, false, true, true), Struct_3(Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, false), 933f, 1u), Struct_1(vec3<bool>(false, true, true), vec3<bool>(false, false, false), 734f, 46004u)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), -1320f, 69673u)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), -1935f, 0u)), vec3<u32>(~4294967295u, 10604u, 58957u), func_1(~56597u, vec4<bool>(false, false, true, false), Struct_3(Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), -1075f, 1u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), 1000f, 70039u)), func_1(4294967295u, vec4<bool>(false, false, true, true), Struct_3(Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), 1436f, 47075u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, false), -192f, 6557u)), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, false, false), -276f, 35757u)))), !vec3<bool>(func_4(Struct_3(Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), 1608f, 45148u), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, false), -1716f, 4294967295u)), vec3<u32>(6871u, 4294967295u, 43038u), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true), -263f, 78244u)).x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1082f - -120f) + _wgslsmith_f_op_f32(f32(-1f) * -737f))), 9456u), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, -426f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 343f), _wgslsmith_f_op_f32(floor(3011f)))) * 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(33907u, 0u)), vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(~(vec2<u32>(6875u, 57177u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), ~vec2<u32>(405u, 0u))), abs(u_input.a.x >> (_wgslsmith_add_u32(abs(3281u), reverseBits(23214u)) % 32u)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-1i), abs(-48142i)), firstTrailingBit(abs(vec2<i32>(u_input.a.x, 2147483647i)))), ~reverseBits(~vec2<i32>(u_input.a.x, -4634i))), max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~4294967295u), vec2<u32>(_wgslsmith_add_u32(67440u, 0u), 1u)), select(1u, 0u, func_1(96164u, vec4<bool>(var_0, true, true, var_0), Struct_3(Struct_1(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, true), 975f, 0u), Struct_1(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true), -643f, 25827u)), Struct_1(vec3<bool>(true, false, var_0), vec3<bool>(var_0, true, false), -1076f, 4294967295u)).a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), ~_wgslsmith_sub_u32(4294967295u, 4294967295u)), ~vec2<u32>(1u, 1u) >> (reverseBits(select(vec2<u32>(2914u, 0u), vec2<u32>(7828u, 0u), vec2<bool>(true, var_0))) % vec2<u32>(32u))));
}

