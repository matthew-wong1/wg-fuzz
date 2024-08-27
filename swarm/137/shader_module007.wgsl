struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> vec4<u32> {
    return vec4<u32>(firstLeadingBit(1u) & (_wgslsmith_clamp_u32(~0u, firstTrailingBit(1u), max(35348u, arg_0)) | ((9169u << (arg_0 % 32u)) >> (~35341u % 32u))), ~arg_0, arg_2, _wgslsmith_div_u32(arg_0, ~26121u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<bool>(_wgslsmith_dot_vec4_i32(~vec4<i32>(18549i, 1i, 51039i, u_input.a.x) ^ -vec4<i32>(arg_0.d.b, arg_0.d.b, arg_0.d.b, -39012i), vec4<i32>(1i, u_input.b.x, -44184i, 91i) & vec4<i32>(1i, -37996i, u_input.b.x, 2147483647i)) > _wgslsmith_add_i32(u_input.b.x, countOneBits(arg_0.d.b) >> ((12523u | arg_0.b.x) % 32u)), true, true && (all(vec4<bool>(true, true, true, true)) || all(vec3<bool>(false, false, false))));
    var_0 = vec3<bool>(_wgslsmith_mult_u32(arg_0.b.x, ~(~arg_0.b.x)) >= ~_wgslsmith_div_u32(_wgslsmith_mult_u32(35333u, 0u), 1u), false, var_0.x);
    let var_1 = arg_0;
    var_0 = select(vec3<bool>(all(select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), !var_0.xx)), !(var_0.x & var_0.x), !var_0.x), vec3<bool>(var_0.x, true, any(select(vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x), select(var_0.xx, vec2<bool>(true, true), false)))), arg_0.d.b <= reverseBits(1i));
    let var_2 = 1u;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-207f)), _wgslsmith_f_op_f32(ceil(var_1.a.x)))) + 2106f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(-1189f - -670f))))), -var_1.d.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(54905u, 4294967295u), ~(~5051u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(14158u, 28719u))), vec3<u32>(1u, 1u, 1u)) ^ vec3<u32>(1u, 1u, 1u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x));
    var var_2 = func_3(Struct_3(arg_0.a, reverseBits(~vec4<u32>(11123u, var_0.x, 0u, 0u)) << (select(select(vec4<u32>(77819u, 31485u, 0u, 0u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<bool>(true, false, arg_1.x, false)), vec4<u32>(var_0.x, var_0.x, 1u, 20135u), arg_1.x) % vec4<u32>(32u)), func_3(Struct_3(vec2<f32>(359f, -716f), vec4<u32>(64095u, var_0.x, 67404u, var_0.x) << (vec4<u32>(4294967295u, var_0.x, 4294967295u, 35622u) % vec4<u32>(32u)), func_3(Struct_3(var_1.wz, vec4<u32>(42411u, 1u, 1u, 0u), Struct_1(1000f), arg_0), arg_0.c).c, Struct_2(arg_0.a, arg_3.x, Struct_1(var_1.x))), Struct_1(_wgslsmith_f_op_f32(-var_1.x))).c, arg_0), Struct_1(1000f)).c;
    var_2 = func_3(Struct_3(arg_0.a, ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 27872u, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, var_0.x))), arg_0.c, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(var_1.yy - var_1.wx), ~vec4<u32>(1u, var_0.x, 55788u, 47091u), Struct_1(-164f), Struct_2(var_1.wx, u_input.c, Struct_1(253f))), func_3(Struct_3(arg_0.a, vec4<u32>(var_0.x, var_0.x, var_0.x, 5049u), arg_0.c, Struct_2(vec2<f32>(arg_0.a.x, 159f), arg_3.x, Struct_1(var_2.a))), func_3(Struct_3(vec2<f32>(var_1.x, var_1.x), vec4<u32>(37304u, 4294967295u, var_0.x, 24524u), arg_0.c, Struct_2(var_1.yy, 33102i, arg_0.c)), Struct_1(arg_0.c.a)).c).c)), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-303f, 367f)) + arg_0.a), vec4<u32>(1u, ~var_0.x, 4294967295u, 1u), func_3(Struct_3(var_1.xz, vec4<u32>(18873u, 0u, var_0.x, var_0.x), Struct_1(var_1.x), Struct_2(var_1.zz, u_input.c, arg_0.c)), arg_0.c).c, func_3(Struct_3(arg_0.a, vec4<u32>(var_0.x, var_0.x, 38490u, var_0.x), arg_0.c, arg_0), Struct_1(var_2.a))), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(180f, 543f) * vec2<f32>(127f, arg_0.a.x)), vec4<u32>(var_0.x, var_0.x, 50629u, 1u), Struct_1(var_1.x), arg_0), Struct_1(_wgslsmith_f_op_f32(abs(arg_0.c.a)))).c).c).c;
    var var_3 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_2.a))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-1341f * -1000f))));
    let var_1 = min(min(firstTrailingBit(u_input.c), u_input.b.x ^ -1i), abs(-18851i)) >= -39550i;
    var var_2 = _wgslsmith_mult_u32(~29919u, 1u);
    let var_3 = func_4(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1629f, var_0.a))))), _wgslsmith_mod_vec4_u32(~vec4<u32>(18421u, 0u, 1u, 4294967295u), func_2(53519u, false, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-var_0.a)), Struct_2(vec2<f32>(var_0.a, 868f), u_input.b.x, Struct_1(var_0.a))), var_0), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, false)), vec2<bool>(false, false)), !select(select(vec2<bool>(true, false), vec2<bool>(false, var_1), var_1), vec2<bool>(true, true), select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), var_1)), var_1), -((-vec2<i32>(-157i, u_input.a.x) ^ vec2<i32>(u_input.c, u_input.c)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), func_2(64792u, var_1, 0u).yy, ~vec2<u32>(0u, 0u)) % vec2<u32>(32u))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i), vec3<i32>(1i, u_input.a.x, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 54003i, -1i), vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<i32>(2147483647i, u_input.b.x, 2147483647i))) | countOneBits(vec3<i32>(-13398i, u_input.c, -34523i)), ~(~vec3<i32>(26777i, u_input.c, u_input.a.x)), any(select(vec3<bool>(var_1, true, true), !vec3<bool>(var_1, true, var_1), var_1))));
    let var_4 = abs(vec2<i32>(_wgslsmith_sub_i32(1i, 0i), countOneBits(firstLeadingBit(0i)))) & abs(reverseBits(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), u_input.b))));
    return _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(25776u, 1u, 10733u, 1u), vec4<u32>(40843u, 1u, 24537u, 61905u))), ~6116u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(859f, -231f))), -203f), _wgslsmith_clamp_vec4_u32(~vec4<u32>(func_1(), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(21561u, 4294967295u, 90898u), vec3<u32>(0u, 4294967295u, 0u)), ~0u), ~firstLeadingBit(vec4<u32>(108139u, 29024u, 59169u, 0u)), vec4<u32>(countOneBits(reverseBits(1u)), ~62555u, 47882u, ~_wgslsmith_add_u32(1u, 70560u))), Struct_1(_wgslsmith_f_op_f32(418f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1358f, -458f, true)) * _wgslsmith_f_op_f32(ceil(1000f))))), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1078f, 1501f) + vec2<f32>(-1000f, -1000f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-401f, 1496f)))), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(-121f), Struct_2(vec2<f32>(-1000f, -622f), min(-2147483647i, u_input.a.x), func_3(Struct_3(vec2<f32>(-1418f, 254f), vec4<u32>(35149u, 0u, 44877u, 4294967295u), Struct_1(-2768f), Struct_2(vec2<f32>(-339f, -2282f), u_input.c, Struct_1(1041f))), Struct_1(-464f)).c)), Struct_1(_wgslsmith_f_op_f32(126f * -1000f))));
    var_0 = Struct_3(vec2<f32>(-771f, 1000f), ~((vec4<u32>(15038u, 0u, 61292u, 4974u) ^ var_0.b) & var_0.b) << (vec4<u32>(4294967295u, func_1(), ~_wgslsmith_div_u32(var_0.b.x, 4294967295u), var_0.b.x) % vec4<u32>(32u)), var_0.c, Struct_2(_wgslsmith_div_vec2_f32(var_0.a, var_0.a), -1i, Struct_1(_wgslsmith_f_op_f32(-var_0.d.c.a))));
    var_0 = Struct_3(var_0.a, var_0.b, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, -546f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(966f, var_0.d.c.a) + var_0.d.a))), 1i, Struct_1(-379f)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(var_0.d.b, 2147483647i), vec2<i32>(u_input.b.x, -1i))), countOneBits(vec3<i32>(var_0.d.b & u_input.b.x, min(var_0.d.b, var_0.d.b), 16095i))), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(sign(var_0.d.a)), vec4<u32>(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), func_2(var_0.b.x, false, 1u).x, _wgslsmith_add_u32(13576u, var_0.b.x), abs(var_0.b.x)), var_0.d.c, Struct_2(_wgslsmith_f_op_vec2_f32(var_0.d.a - vec2<f32>(-387f, -126f)), -29435i, func_4(var_0.d, vec2<bool>(false, false), u_input.a, vec3<i32>(u_input.c, u_input.a.x, u_input.c)))), Struct_1(641f)));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(279f, 982f))), var_0.d.a)), ~reverseBits(vec4<u32>(var_0.b.x, 1772u, _wgslsmith_mod_u32(0u, var_0.b.x), 6377u)), var_0.c, Struct_2(vec2<f32>(1077f, 1000f), 10074i, var_0.d.c));
    var var_1 = max(vec4<i32>(-20913i, 2147483647i, 1i, var_0.d.b), vec4<i32>(-abs(-33201i), var_0.d.b, ~(-47723i), var_0.d.b));
    let var_2 = vec4<u32>(~func_2(~7201u, true, countOneBits(var_0.b.x)).x, var_0.b.x >> ((var_0.b.x & select(~var_0.b.x, ~var_0.b.x, true)) % 32u), ~(~_wgslsmith_div_u32(var_0.b.x, 19420u) << (~var_0.b.x % 32u)), 0u);
    let var_3 = select(select(select(vec2<bool>(all(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), vec2<bool>(false, !all(vec4<bool>(false, true, true, false))), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false))), !vec2<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), false);
    let var_4 = Struct_1(1862f);
    let var_5 = vec3<bool>(var_3.x, all(select(vec3<bool>(true, u_input.a.x > var_1.x, var_3.x), select(vec3<bool>(var_3.x, true, false), !vec3<bool>(true, true, var_3.x), true), !vec3<bool>(false, var_3.x, var_3.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-var_1.zww)) | max(select(var_1.yzw, var_1.yzy, vec3<bool>(true, true, true)), var_1.xxx), var_4.a, ~46613i, 2197f);
}

