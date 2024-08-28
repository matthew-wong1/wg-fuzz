struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -10972i, 43664i, -20062i);

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = vec4<i32>(-(~(-1i)), global0.x, 33040i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.xz, vec2<i32>(63919i, global0.x)) & ~vec2<i32>(global0.x, global0.x), vec2<i32>(-1i) * -vec2<i32>(global0.x, global0.x)) << (u_input.a % 32u));
    var var_0 = Struct_4(vec3<i32>(global0.x, 2147483647i, ~(~global0.x)), global1.x, Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, 58010u), reverseBits(vec4<u32>(65777u, u_input.a, 4294967295u, u_input.a))), firstTrailingBit(vec4<u32>(45115u, 4294967295u, u_input.a, 19332u)) >> (vec4<u32>(41629u, 42745u, 50935u, u_input.a) % vec4<u32>(32u)))), firstLeadingBit(select(-max(vec3<i32>(0i, 1i, global0.x), global0.zwx), vec3<i32>(min(global0.x, -1i), global0.x, -58262i & global0.x), !all(vec4<bool>(false, false, global1.x, global1.x)))));
    var var_1 = !var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1447f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1983f - -2405f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(851f, 196f)), _wgslsmith_f_op_f32(f32(-1f) * -362f)))));
    var var_3 = Struct_2(~(~4294967295u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, var_2.x, var_2.x, 1000f)))))))), 1713u, Struct_1(select(global1.xx, vec2<bool>(true, global1.x), true), var_0.a.x));
    return 0i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = vec4<i32>(_wgslsmith_add_i32(1017i, 28952i), 0i, _wgslsmith_sub_i32(func_3(), 83970i), -arg_0.x);
    var var_0 = Struct_4(vec3<i32>(select((1i ^ arg_0.x) >> (~1u % 32u), -_wgslsmith_dot_vec3_i32(global0.ywy, global0.wyz), true), _wgslsmith_add_i32(-2147483647i << (select(24108u, 69369u, false) % 32u), abs(2147483647i) >> (max(u_input.a, 8239u) % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(29798i, global0.x), firstTrailingBit(arg_0.zx)))), (firstTrailingBit(10708u) >= u_input.a) || select(!(global1.x && true), global1.x, true), Struct_3(_wgslsmith_mult_vec4_u32(select(vec4<u32>(35185u, 0u, u_input.a, u_input.a) | vec4<u32>(u_input.a, 98u, u_input.a, 27139u), ~vec4<u32>(31250u, 0u, u_input.a, 1u), false), select(~vec4<u32>(u_input.a, 1u, 1u, u_input.a), min(vec4<u32>(5018u, 1u, 18480u, 56359u), vec4<u32>(22106u, u_input.a, u_input.a, u_input.a)), true))), _wgslsmith_add_vec3_i32(-vec3<i32>(-16240i, arg_0.x << (48125u % 32u), 1i), vec3<i32>(-17453i, 14577i, -firstLeadingBit(-5803i))));
    global0 = vec4<i32>(_wgslsmith_div_i32(3463i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, -46280i, var_0.a.x) ^ arg_0, -vec3<i32>(arg_0.x, arg_0.x, -2147483647i)), ~global0.x)), -1i, -2147483647i, ~(-_wgslsmith_clamp_i32(-10137i, 2147483647i, 0i) ^ arg_0.x));
    let var_1 = _wgslsmith_mult_vec4_i32(~(-abs(vec4<i32>(global0.x, -2147483647i, -2147483647i, 0i))), max(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.d.x, 10206i, -1i, -27027i)) ^ ~vec4<i32>(0i, var_0.d.x, global0.x, arg_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.a.x, var_0.a.x, var_0.a.x) & vec4<i32>(10025i, var_0.d.x, -20029i, arg_0.x), abs(vec4<i32>(arg_0.x, 28131i, var_0.d.x, global0.x))), (vec4<i32>(1i, 16589i, -1i, arg_0.x) | vec4<i32>(2147483647i, var_0.d.x, 5361i, arg_0.x)) << (~var_0.c.a % vec4<u32>(32u))), abs(vec4<i32>(global0.x, _wgslsmith_div_i32(-2147483647i, 5497i), global0.x, -arg_0.x))));
    var_0 = Struct_4(arg_0, var_0.b | true, var_0.c, -(abs(~arg_0) >> (vec3<u32>(_wgslsmith_add_u32(0u, var_0.c.a.x), countOneBits(26161u), u_input.a) % vec3<u32>(32u))));
    return Struct_1(vec2<bool>(!all(select(global1.yy, global1.wx, global1.yx)), !select(var_0.b, select(var_0.b, global1.x, global1.x), -67598i < global0.x)), var_1.x);
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(22434u, u_input.a, u_input.a, 48014u), countOneBits(vec4<u32>(u_input.a, 0u, 1u, u_input.a))) << (vec4<u32>(~u_input.a, 4294967295u ^ u_input.a, u_input.a, ~4294967295u) % vec4<u32>(32u)), min(countOneBits(vec4<u32>(u_input.a, 55864u, 0u, 15223u)), vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), 4571u))), arg_0, reverseBits(u_input.a), func_2(~(global0.zyz ^ -vec3<i32>(35503i, global0.x, 27984i))));
    global1 = !(!(!(!vec4<bool>(false, global1.x, var_0.d.a.x, false))));
    let var_1 = var_0;
    var var_2 = Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.b), var_0.b, vec4<bool>(all(vec2<bool>(global1.x, var_0.d.a.x)), arg_0.x <= 499f, var_0.d.a.x, true))))), countOneBits(abs(~4294967295u)), Struct_1(var_0.d.a, _wgslsmith_mod_i32(global0.x, ~2147483647i)));
    global1 = select(select(vec4<bool>(false != all(vec4<bool>(var_2.d.a.x, var_1.d.a.x, false, false)), true, true, any(!vec4<bool>(true, false, false, var_2.d.a.x))), vec4<bool>(true, var_2.d.a.x, false, all(!global1.yy)), !var_2.d.a.x), select(!(!select(vec4<bool>(true, var_2.d.a.x, false, var_1.d.a.x), vec4<bool>(true, var_1.d.a.x, true, var_0.d.a.x), vec4<bool>(false, true, var_1.d.a.x, false))), vec4<bool>(all(select(vec3<bool>(true, var_1.d.a.x, var_0.d.a.x), vec3<bool>(true, false, var_0.d.a.x), global1.wzy)), false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 46954u, 0u), vec4<u32>(var_1.c, var_1.a, var_0.c, var_0.a)) > 1u, var_2.d.a.x), !select(!vec4<bool>(var_2.d.a.x, false, false, global1.x), select(vec4<bool>(var_1.d.a.x, false, global1.x, true), vec4<bool>(true, var_1.d.a.x, global1.x, true), true), false)), var_0.d.a.x);
    return select(vec4<bool>(all(vec2<bool>(true, true && var_2.d.a.x)), var_0.d.a.x, false, _wgslsmith_clamp_i32(-var_1.d.b, ~var_1.d.b, max(var_0.d.b, -2147483647i)) >= var_1.d.b), select(select(vec4<bool>(var_1.d.a.x, global1.x && true, false, true), select(vec4<bool>(false, var_0.d.a.x, true, var_0.d.a.x), !vec4<bool>(false, false, var_0.d.a.x, true), !var_2.d.a.x), true), vec4<bool>(!(1u <= u_input.a), true, !(!global1.x), global1.x && (var_0.b.x > 209f)), vec4<bool>(true, var_1.d.a.x, select(arg_0.x <= 871f, true, true && var_0.d.a.x), any(vec3<bool>(true, true, var_0.d.a.x)))), select(!select(select(vec4<bool>(global1.x, var_2.d.a.x, true, var_1.d.a.x), vec4<bool>(false, var_2.d.a.x, false, var_1.d.a.x), false), select(vec4<bool>(false, var_0.d.a.x, global1.x, global1.x), vec4<bool>(var_2.d.a.x, var_2.d.a.x, true, global1.x), true), !vec4<bool>(true, var_0.d.a.x, var_0.d.a.x, true)), select(select(select(vec4<bool>(var_1.d.a.x, true, true, false), vec4<bool>(var_1.d.a.x, var_0.d.a.x, var_2.d.a.x, false), vec4<bool>(var_1.d.a.x, global1.x, true, var_2.d.a.x)), select(vec4<bool>(false, true, var_2.d.a.x, global1.x), vec4<bool>(true, global1.x, global1.x, var_0.d.a.x), vec4<bool>(var_1.d.a.x, var_2.d.a.x, false, var_0.d.a.x)), vec4<bool>(var_2.d.a.x, var_2.d.a.x, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(global1.x, false, true, true), true), true), !(u_input.a != var_1.c) | ((var_2.d.a.x && true) || (21125i >= var_0.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1530f, -1000f, 435f) - vec4<f32>(1115f, -931f, -669f, -656f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, 1000f, -2116f, -1613f) * vec4<f32>(-495f, -902f, -1065f, -1038f)), vec4<f32>(463f, 132f, 470f, -1841f)))))));
    var var_0 = Struct_2(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(select(u_input.a | u_input.a, 1u, !global1.x), 0u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1309f, -1202f, -275f, 1366f), vec4<f32>(-1496f, 1296f, -501f, 887f), global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1422f, 381f, 222f, -1027f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1191f, -1232f, -1000f, 1989f), _wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 1770f, 1574f, 1000f) + vec4<f32>(-130f, 968f, -387f, -1864f)))), true)))), u_input.a, Struct_1(!(!global1.zw), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, 1i) | (20526i >> (u_input.a % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.wwx, vec3<i32>(global0.x, global0.x, -1i)), 17466i))));
    var_0 = Struct_2(~u_input.a, vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1570f)) + var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1593f, -565f, false)), var_0.b.x), true)), var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3167f, var_0.b.x))))), ~(~var_0.a), func_2(abs(~(-global0.zyz))));
    var var_1 = !func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    let var_2 = var_0.b.xxz;
    var var_3 = -1801f;
    var_0 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~70679u, 4294967295u, min(72461u, 1u)) | u_input.a, ~(~u_input.a) & u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_2.x, 505f, -611f) + _wgslsmith_f_op_vec4_f32(-var_0.b)), var_0.b))), 41194u, var_0.d);
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b))))), vec4<f32>(var_0.b.x, -1000f, _wgslsmith_div_f32(var_2.x, var_0.b.x), 1f))), vec4<f32>(var_0.b.x, -471f, _wgslsmith_div_f32(1000f, 507f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_0.b.x * 537f)) * -291f)));
}

