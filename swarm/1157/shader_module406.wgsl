struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(vec2<i32>(max(select(~0i, -1i, true), -1i), firstLeadingBit(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-1i, 23491i)))), vec3<i32>(min(_wgslsmith_mult_i32(~31235i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-3450i, 2147483647i))), -max(1i, _wgslsmith_mod_i32(-1500i, -1i)), -2147483647i), ~91685u);
    let var_1 = Struct_2(Struct_1(var_0.a, var_0.b, ~(~111492u)), Struct_1(~var_0.a, ~max(vec3<i32>(29751i, var_0.b.x, var_0.b.x) << (u_input.e.zzz % vec3<u32>(32u)), vec3<i32>(var_0.a.x, var_0.b.x, 2147483647i)), ~74860u), -_wgslsmith_div_i32(var_0.a.x, var_0.a.x & ~var_0.b.x), var_0.c);
    var var_2 = var_0;
    let var_3 = var_1.a;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1750f)), _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(min(var_2.b.x, ~firstLeadingBit(17265i)), min(var_2.b.x, var_3.a.x)), _wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-14227i, var_0.a.x, 0i), _wgslsmith_clamp_vec3_i32(var_2.b, var_1.b.b, vec3<i32>(var_3.b.x, var_0.b.x, var_1.c))), -3856i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    var var_1 = ~reverseBits(firstLeadingBit(var_0.c));
    var var_2 = var_0;
    var var_3 = vec4<i32>(-(~var_2.b.x), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, var_2.b.x, arg_0.b.x, -77454i), vec4<i32>(var_0.b.x, var_2.b.x, arg_1, -2147483647i)), arg_2.a.x << (var_0.c % 32u), var_0.a.x), firstTrailingBit(vec4<i32>(-10676i, var_0.a.x, arg_1, -13754i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(0u), var_0.b.x), _wgslsmith_add_i32(41265i, 13762i) & reverseBits(var_0.b.x))) | -vec4<i32>(~14627i, 24298i, ~52226i, var_2.b.x);
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, 625f, -873f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(623f)), -153f, -580f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, -331f, 1220f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(618f, 2224f, -1504f) + vec3<f32>(-119f, -529f, -946f))))), ~_wgslsmith_add_vec4_u32((vec4<u32>(4294967295u, var_2.c, 0u, 54777u) << (vec4<u32>(var_2.c, 417u, 1u, 47795u) % vec4<u32>(32u))) | ~vec4<u32>(var_0.c, u_input.e.x, 1619u, arg_0.c), u_input.e), u_input.a, Struct_2(arg_2, var_0, var_0.b.x, u_input.d.x));
    return any(vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    let var_0 = u_input.a;
    let var_1 = Struct_4(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2171f), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)))))), arg_0.d.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(abs(arg_0.a.x)))))));
    let var_2 = !vec4<bool>(arg_2, func_2(var_1.b, ~(-1i), arg_0.d.b), arg_2, !(!(arg_2 || arg_2)));
    let var_3 = var_1.a.x;
    var var_4 = select(vec2<bool>(!var_2.x, arg_2), !select(!var_2.wx, !(!var_2.xy), select(select(vec2<bool>(false, var_2.x), var_2.zy, arg_2), var_2.xz, arg_2)), !var_2.yy);
    return 4517i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(-20198i, -8391i)), vec2<i32>(max(2147483647i, 20504i), func_1(Struct_3(vec3<f32>(1541f, -761f, 664f), u_input.e, u_input.e.zx, Struct_2(Struct_1(vec2<i32>(48868i, -2147483647i), vec3<i32>(21635i, 39076i, 1i), 10296u), Struct_1(vec2<i32>(-1i, -1i), vec3<i32>(-2147483647i, -2147483647i, 0i), 73081u), -2147483647i, 4294967295u)), vec4<i32>(-17529i, 2147483647i, 26372i, -8427i), false))), vec3<i32>(min(~2147483647i, ~2147483647i), 1i, _wgslsmith_div_i32(1i, 1i)), u_input.d.x), Struct_1(-firstTrailingBit(vec2<i32>(-18365i, -31044i)), vec3<i32>(firstLeadingBit(~0i), ~_wgslsmith_div_i32(-1i, -1i), countOneBits(_wgslsmith_sub_i32(-1i, 1i))), u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, -1i, -1i) >> (vec4<u32>(u_input.a.x, u_input.b, 87581u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)), (~vec4<i32>(1i, 34887i, -22307i, 0i) >> ((vec4<u32>(46678u, u_input.d.x, 78800u, 16038u) & vec4<u32>(18661u, u_input.d.x, u_input.e.x, 34109u)) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(~u_input.e, _wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(u_input.c.x, u_input.e.x, u_input.d.x, u_input.d.x))) % vec4<u32>(32u))), countOneBits(0u));
    var_0 = Struct_2(var_0.b, Struct_1(vec2<i32>(func_1(Struct_3(vec3<f32>(-1783f, 605f, -195f), vec4<u32>(0u, 4294967295u, 21041u, 4294967295u), vec2<u32>(66733u, 1559u), Struct_2(var_0.a, Struct_1(vec2<i32>(var_0.c, -17213i), vec3<i32>(0i, var_0.b.b.x, -2147483647i), var_0.d), var_0.c, u_input.a.x)), vec4<i32>(var_0.c, 1i, var_0.c, 2147483647i), true), var_0.c), -var_0.b.b, abs(_wgslsmith_dot_vec2_u32(u_input.e.wz, u_input.a & vec2<u32>(36836u, u_input.c.x)))), func_3(3266u), var_0.b.c);
    var var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f), _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(916f + -1748f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(ceil(-749f))), Struct_1(select(var_0.b.b.xx, var_0.b.a << (vec2<u32>(8985u, 0u) % vec2<u32>(32u)), all(vec2<bool>(true, true)) | all(vec4<bool>(true, true, false, false))), vec3<i32>(var_0.b.a.x, ~max(var_0.a.a.x, 1i), -reverseBits(3098i)), ~select(abs(61733u), _wgslsmith_mod_u32(var_0.d, 1u), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1237f))));
    var var_2 = select(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, !(-574f >= var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x - var_1.c) == _wgslsmith_f_op_f32(-var_1.c))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(round(1383f)) == 808f), any(vec2<bool>(true, true))), vec4<bool>(!all(vec2<bool>(true, true)), select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)), any(vec4<bool>(true, true, true, true))), true, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(0u, var_1.b.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(89045u, 1u), vec2<u32>(u_input.b, var_0.d))) < var_1.b.c));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, -195f, 638f, 713f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, var_1.c, var_1.c, -2407f)))))), var_0.b, _wgslsmith_f_op_f32(151f * var_1.a.x));
    var_2 = vec4<bool>(!(false == var_2.x), true, var_2.x, _wgslsmith_f_op_f32(-var_1.c) > _wgslsmith_div_f32(393f, _wgslsmith_f_op_f32(-var_1.a.x)));
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(-(~(-6000i)), ~_wgslsmith_add_i32(var_0.b.a.x, _wgslsmith_add_i32(var_0.a.a.x, -12459i))), vec2<i32>(1056i, -7830i));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_i32(-46280i, var_1.b.b.x, ~(-var_3.x)), ~(_wgslsmith_mult_i32(-40410i, var_3.x) & var_0.b.a.x), false), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0.a.a.x, 2147483647i, var_3.x, var_0.b.b.x)), select(vec4<i32>(var_0.a.a.x, var_0.b.a.x, 2147483647i, 61369i), vec4<i32>(var_1.b.b.x, var_1.b.a.x, -28081i, var_1.b.a.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x)) & _wgslsmith_mod_vec4_i32(vec4<i32>(17109i, 18336i, 3989i, var_3.x), vec4<i32>(13154i, 2147483647i, -2147483647i, 1i))), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.c, 1843i, -1i, var_3.x), max(vec4<i32>(-18477i, -1i, -18658i, 8239i), vec4<i32>(var_0.b.a.x, 29965i, var_3.x, 2147483647i)), vec4<i32>(56101i, 0i, 2147483647i, var_3.x) & vec4<i32>(var_3.x, var_1.b.a.x, 23916i, var_3.x))));
}

