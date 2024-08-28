struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_3,
    d: bool,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    return u_input.a.x;
}

fn func_3() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2565f, -1504f, 645f, 1000f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1624f, -1651f, 1000f, 1000f), vec4<f32>(-193f, -1290f, -115f, -349f))))))), 38824i, Struct_3(u_input.a, -1597f), !(!(!(u_input.b != 1665u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1639f, -1492f))), _wgslsmith_f_op_f32(ceil(-183f)))));
    var_0 = Struct_4(vec4<f32>(-761f, var_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e.x))) + -826f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))), u_input.a.x, var_0.c, true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, var_0.a.x, var_0.e.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-120f, 1763f, var_0.c.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(314f)), _wgslsmith_f_op_f32(1059f * -155f), -262f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-162f, var_0.c.b, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, -1102f, var_0.e.x) + vec3<f32>(-965f, var_0.a.x, var_0.c.b)))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -3072f)) + var_0.e.yy)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 67249u, 22681u) >> (vec3<u32>(4294967295u, u_input.b, 54299u) % vec3<u32>(32u)), vec3<u32>(10262u, u_input.b, u_input.b) >> (firstTrailingBit(vec3<u32>(0u, 1u, u_input.b)) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(507u, u_input.b, u_input.b))), var_0.e.x, -331f, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.zwy, var_0.c.a.zyz), ~vec3<i32>(u_input.a.x, var_0.b, u_input.a.x))), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(var_0.d, false, true), vec3<bool>(var_0.d, false, false)), vec3<bool>(var_0.d, true, var_0.d && var_0.d), false), vec3<bool>(!(true || var_0.d), select(false, var_0.d, true) && all(vec2<bool>(true, var_0.d)), !any(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d))), !(!var_0.d)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), var_0.c.b), ~(~vec3<u32>(1u, 1u, 14392u)), var_0.a.x, var_0.e.x, var_0.b));
    var_0 = Struct_4(var_0.a, u_input.a.x, var_0.c, true, var_0.a.zyz);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c, var_0.a.x, 754f, -284f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_1.a.d, -186f, 985f) - var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.c), -788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.a.x))), _wgslsmith_f_op_f32(trunc(var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.a.x)))), true)), -2147483647i, Struct_3(abs(select(vec4<i32>(59780i, var_0.c.a.x, 3677i, 38095i), firstLeadingBit(vec4<i32>(2147483647i, var_0.c.a.x, -1i, -1i)), vec4<bool>(true, true, var_0.d, var_0.d))), _wgslsmith_f_op_f32(-1357f + var_1.c.a.x)), all(vec2<bool>(select(true, all(var_1.b.zz), true), !var_0.d)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.e - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.a.zzz)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 442f, 126f) * vec3<f32>(419f, var_1.a.c, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-var_0.a.zzx))));
    return var_0.d;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(507f, -1049f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, -882f) + vec2<f32>(-306f, -260f)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(0u), 4294967295u, 4294967295u >> (u_input.b % 32u)), select(vec3<u32>(u_input.b, 0u, 76825u), vec3<u32>(u_input.b, 4294967295u, 58956u) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))) >> (vec3<u32>(_wgslsmith_mod_u32(81384u, u_input.b), 1u << (u_input.b % 32u), _wgslsmith_sub_u32(77469u, u_input.b)) % vec3<u32>(32u))), 766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1818f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<f32>(843f, 649f), vec3<u32>(27651u, 4294967295u, 2440u), -1441f, -1110f, u_input.a.x), vec3<bool>(false, true, true), Struct_1(vec2<f32>(-888f, 458f), vec3<u32>(1u, u_input.b, u_input.b), -177f, -402f, 1i))), -2494i), vec2<i32>((i32(-1i) * -18981i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(49021i, 34098i, -2147483647i, u_input.a.x), u_input.a), ~1i >> (0u % 32u))));
    let var_1 = Struct_5(firstTrailingBit(vec3<i32>(select(~u_input.a.x, var_0.e >> (409u % 32u), false), _wgslsmith_mod_i32(func_2(vec4<bool>(false, true, false, true), Struct_2(var_0, vec3<bool>(true, true, false), var_0)), -29193i), 0i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~var_0.b, Struct_3(u_input.a, var_0.c));
    var var_2 = var_0;
    let var_3 = var_2.a.x;
    var_2 = Struct_1(var_2.a, select(vec3<u32>(~19350u, 63125u, 44468u), _wgslsmith_mod_vec3_u32(var_2.b, vec3<u32>(var_1.c.x, var_2.b.x, var_1.c.x)), vec3<bool>(func_3(), true, true)) ^ (select(var_0.b, ~var_1.c, vec3<bool>(false, true, false)) >> (~(~var_0.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) * _wgslsmith_f_op_f32(-1582f - var_2.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1880f - 776f) * var_0.d), _wgslsmith_f_op_f32(abs(var_0.a.x))))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_0.e, 4270i, var_1.a.x)), var_1.a));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(695f, 1000f)), -1677f)), ~firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 0u)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 742u), vec3<u32>(u_input.b, u_input.b, 32046u)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(281f - -3230f), -52132i), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-589f, -1861f), vec2<f32>(1699f, -856f), false)))), ~abs(vec3<u32>(u_input.b, 5852u, 84261u) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2689f)))), 1i));
    let var_1 = var_0.b.x && (var_0.a.e >= _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-25382i, u_input.a.x, 52417i, 2147483647i)) | u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.e, 1i), u_input.a)));
    var var_2 = -228f;
    var_2 = 278f;
    var var_3 = -1i;
    let var_4 = Struct_5(u_input.a.zzz, !var_0.b, vec3<u32>(24616u, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c.b.x, ~3276u), ~(~vec2<u32>(20071u, 4294967295u)))), Struct_3(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.c, 1504f)) + _wgslsmith_f_op_f32(ceil(498f))), var_0.a.d)));
    var_3 = var_0.a.e;
    var_3 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.a.x)))), -1179f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a.a))));
}

