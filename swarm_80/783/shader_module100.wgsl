struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-157f, 961f, 954f, -896f), vec4<f32>(-1510f, -1758f, 297f, 977f), vec4<f32>(1390f, 206f, -1923f, -517f), vec4<f32>(1516f, -747f, 138f, 668f), vec4<f32>(-265f, 625f, -1089f, 1134f));

var<private> global2: f32 = -531f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 1000f, 487f));
    return u_input.b.x;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(-1334f));
    global1 = array<vec4<f32>, 5>();
    return !(!select(!select(vec2<bool>(arg_0.d.b.x, arg_0.d.b.x), arg_0.d.b, vec2<bool>(true, arg_0.d.b.x)), arg_0.d.b, select(!arg_0.d.b, arg_0.d.b, true)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1417f)))))) - -251f);
    let var_0 = arg_0;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1254f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1501f)) - 1000f)));
    var var_1 = -(vec3<i32>(55545i, select(func_2(Struct_2(vec2<u32>(0u, arg_1.b), vec2<bool>(true, true), -153f), Struct_2(arg_1.a.zy, vec2<bool>(true, true), 874f), Struct_2(vec2<u32>(arg_1.a.x, 12229u), vec2<bool>(true, false), 2862f)), arg_1.c >> (u_input.a.x % 32u), true), _wgslsmith_mod_i32(-24274i ^ arg_3, u_input.b.x)) | ~(_wgslsmith_add_vec3_i32(arg_2, arg_2) ^ arg_2));
    global0 = true;
    return Struct_2(arg_1.a.xy, select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>(_wgslsmith_mult_i32(6547i, arg_1.c) > arg_0.c, true), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, -511f, -406f)), arg_2, select(4294967295u, 7132u, false), Struct_2(vec2<u32>(4294967295u, 1u), vec2<bool>(false, true), -433f), arg_0.b), Struct_1(arg_1.a ^ vec3<u32>(var_0.a.x, 4294967295u, 4294967295u), 73621u, _wgslsmith_mod_i32(21916i, var_0.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f + arg_1.a.x)), 1997f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, 218f, 1130f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a), _wgslsmith_f_op_vec3_f32(arg_0 * arg_0)))));
    let var_1 = u_input.b.x;
    global0 = ~8819i != min(firstLeadingBit(firstLeadingBit(36695i)), -(~select(arg_1.b.x, arg_1.b.x, arg_1.d.b.x)));
    global1 = array<vec4<f32>, 5>();
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, ~4294967295u << (1u % 32u)), ~4294967295u, ~u_input.a.x), ~arg_1.c, arg_1.b.x);
    return _wgslsmith_clamp_i32(-((~arg_1.b.x ^ ~u_input.b.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 77815u, 3762u), u_input.a) % 32u)), var_2.c, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i << (u_input.a.x % 32u)) == func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1321f, -1545f, -1945f) * vec3<f32>(176f, -888f, 1102f))))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, 196f, 1311f)), vec3<i32>(~(-37345i), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -34881i), u_input.a.x, func_1(Struct_1(u_input.a.wxx, 10731u, -117866i), Struct_1(u_input.a.yzy, 1u, 0i), vec3<i32>(-43757i, -36907i, -1i) | vec3<i32>(32099i, u_input.b.x, -55073i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -7871i, -18059i), vec4<i32>(-2147483647i, 0i, -31499i, -2147483647i))), 1u));
    global1 = array<vec4<f32>, 5>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -630f))), -636f, -700f))), vec3<i32>(~countOneBits(-1i), func_2(Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true), 180f), func_1(Struct_1(vec3<u32>(u_input.a.x, 15615u, u_input.a.x), 1729u, u_input.b.x), Struct_1(vec3<u32>(26460u, 4294967295u, 17492u), 41853u, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x), func_1(Struct_1(u_input.a.zxy, 1u, u_input.b.x), Struct_1(vec3<u32>(u_input.a.x, 0u, 1u), u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x, 10617i, -2147483647i), u_input.b.x)), ~(u_input.b.x ^ -8494i)) >> (u_input.a.zxz % vec3<u32>(32u)), 4294967295u, Struct_2(min(countOneBits(u_input.a.yw) & max(u_input.a.wz, u_input.a.wx), max(u_input.a.yy, countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), -855f), _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~u_input.a.x, 0u << (u_input.a.x % 32u)), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) << (firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, 4294967295u)) % 32u)));
    var var_2 = Struct_2(u_input.a.xz, func_1(Struct_1(u_input.a.xww, ~(u_input.a.x << (u_input.a.x % 32u)), var_1.b.x), Struct_1(vec3<u32>(_wgslsmith_mult_u32(56720u, 25302u), abs(var_1.c), min(u_input.a.x, 17382u)), ~48643u, var_1.b.x), var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.x, select(u_input.b.x, u_input.b.x, var_1.d.b.x)), var_1.b.yy)).b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.d.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.d.c))))), 742f)));
    var var_3 = var_1.a;
    let var_4 = select(!vec4<bool>(false, any(vec3<bool>(false, true, true)) | !var_1.d.b.x, func_3(Struct_3(var_1.a, var_1.b, var_2.a.x, Struct_2(vec2<u32>(var_2.a.x, u_input.a.x), vec2<bool>(true, false), 1391f), 0u), Struct_1(u_input.a.xxy, var_2.a.x, u_input.b.x)).x, var_2.b.x), select(select(!select(vec4<bool>(var_1.d.b.x, var_2.b.x, true, var_2.b.x), vec4<bool>(true, var_1.d.b.x, var_1.d.b.x, var_2.b.x), true), select(!vec4<bool>(var_1.d.b.x, true, var_2.b.x, true), vec4<bool>(var_2.b.x, false, var_1.d.b.x, var_2.b.x), var_1.e <= 0u), any(select(vec4<bool>(var_1.d.b.x, var_1.d.b.x, true, var_1.d.b.x), vec4<bool>(var_2.b.x, false, false, false), true))), select(vec4<bool>(true, var_2.b.x, true, all(vec4<bool>(var_2.b.x, true, false, false))), vec4<bool>(var_2.b.x, all(vec3<bool>(var_1.d.b.x, false, false)), !var_2.b.x, all(vec3<bool>(true, false, var_2.b.x))), false | select(false, var_2.b.x, var_1.d.b.x)), select(vec4<bool>(any(vec4<bool>(var_2.b.x, false, var_1.d.b.x, var_2.b.x)), all(vec3<bool>(true, var_1.d.b.x, var_2.b.x)), true, any(var_1.d.b)), vec4<bool>(var_1.d.b.x, false, true || var_1.d.b.x, any(vec2<bool>(var_1.d.b.x, true))), _wgslsmith_mult_i32(1i, u_input.b.x) > -var_1.b.x)), vec4<bool>(_wgslsmith_sub_u32(1u, u_input.a.x) == 54260u, var_1.d.b.x, !all(!vec3<bool>(true, var_1.d.b.x, var_2.b.x)), all(var_2.b)));
    var var_5 = Struct_1(~vec3<u32>(~4294967295u, 11696u, ~4294967295u), 12697u, 0i);
    global1 = array<vec4<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(1276f, _wgslsmith_f_op_f32(ceil(-1037f)))), func_1(Struct_1(u_input.a.zzw, ~u_input.a.x, reverseBits(-1i)), Struct_1(_wgslsmith_add_vec3_u32(var_5.a, var_5.a), u_input.a.x & var_1.d.a.x, u_input.b.x), -reverseBits(var_1.b), -_wgslsmith_sub_i32(var_5.c, 7551i)).c, _wgslsmith_div_f32(var_1.d.c, _wgslsmith_f_op_f32(-var_2.c))), 1f, _wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.b.x, 13448i, u_input.b.x, 126i) ^ ~vec4<i32>(u_input.b.x, u_input.b.x, var_1.b.x, 2147483647i), max(~vec4<i32>(-2147483647i, var_5.c, var_5.c, -18651i), firstLeadingBit(vec4<i32>(var_1.b.x, -1i, var_1.b.x, var_5.c)))) >> (vec4<u32>(~_wgslsmith_add_u32(0u, u_input.a.x), var_2.a.x, var_2.a.x, ~var_1.c) % vec4<u32>(32u)), max(firstTrailingBit(var_1.b), vec3<i32>(~(-1i), _wgslsmith_add_i32(u_input.b.x, var_5.c), _wgslsmith_mult_i32(var_5.c, var_1.b.x))) ^ (vec3<i32>(var_5.c, 8242i, ~u_input.b.x) >> (var_5.a % vec3<u32>(32u))));
}

