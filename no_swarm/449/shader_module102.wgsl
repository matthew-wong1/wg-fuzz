struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(7378i, 4294967295u, vec2<i32>(i32(-2147483648), -10484i), vec4<bool>(true, false, false, false), vec2<i32>(1i, -1i)), Struct_1(32175i, 4294967295u, vec2<i32>(-635i, 1i), vec4<bool>(true, true, true, false), vec2<i32>(-1i, -1i)), Struct_1(20686i, 0u, vec2<i32>(2147483647i, 10753i), vec4<bool>(false, true, false, true), vec2<i32>(-6158i, 1773i)), Struct_1(0i, 4294967295u, vec2<i32>(17214i, 1i), vec4<bool>(true, true, true, true), vec2<i32>(1i, 2147483647i)), Struct_1(i32(-2147483648), 14255u, vec2<i32>(i32(-2147483648), 41050i), vec4<bool>(true, false, true, false), vec2<i32>(9353i, -34373i)), Struct_1(-10260i, 4294967295u, vec2<i32>(2147483647i, -28374i), vec4<bool>(true, true, true, true), vec2<i32>(1i, -17501i)), Struct_1(-23196i, 0u, vec2<i32>(17540i, 1i), vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), -32848i)), Struct_1(-10259i, 0u, vec2<i32>(128i, 0i), vec4<bool>(false, false, false, false), vec2<i32>(-68413i, 54527i)), Struct_1(1i, 56148u, vec2<i32>(2147483647i, 45972i), vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, -1i)), Struct_1(30206i, 22423u, vec2<i32>(-34467i, 4997i), vec4<bool>(true, false, false, true), vec2<i32>(-54151i, -8303i)), Struct_1(-613i, 12085u, vec2<i32>(0i, 15270i), vec4<bool>(false, true, false, true), vec2<i32>(0i, 1i)), Struct_1(2147483647i, 134179u, vec2<i32>(-23643i, -20845i), vec4<bool>(false, false, false, false), vec2<i32>(-21820i, -10714i)), Struct_1(11042i, 30997u, vec2<i32>(-246i, 41968i), vec4<bool>(true, true, true, false), vec2<i32>(-1i, 3518i)), Struct_1(0i, 50139u, vec2<i32>(48784i, 1i), vec4<bool>(false, true, true, false), vec2<i32>(0i, 2147483647i)), Struct_1(i32(-2147483648), 1u, vec2<i32>(1i, -32444i), vec4<bool>(false, true, true, false), vec2<i32>(30123i, -1i)), Struct_1(-25376i, 0u, vec2<i32>(-23442i, -28370i), vec4<bool>(false, false, true, false), vec2<i32>(21702i, -4448i)), Struct_1(i32(-2147483648), 70494u, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(true, false, false, true), vec2<i32>(0i, -1i)), Struct_1(-26670i, 1u, vec2<i32>(0i, 2147483647i), vec4<bool>(false, false, true, false), vec2<i32>(-1i, -10745i)), Struct_1(-11556i, 0u, vec2<i32>(2147483647i, -33851i), vec4<bool>(true, true, false, true), vec2<i32>(-23849i, 19419i)), Struct_1(-41897i, 31734u, vec2<i32>(-52304i, i32(-2147483648)), vec4<bool>(true, true, true, false), vec2<i32>(-96340i, 26264i)), Struct_1(24586i, 4294967295u, vec2<i32>(-50749i, 2147483647i), vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 2147483647i)), Struct_1(i32(-2147483648), 46243u, vec2<i32>(-58042i, 38581i), vec4<bool>(true, true, true, true), vec2<i32>(1i, 39654i)), Struct_1(0i, 28850u, vec2<i32>(-78746i, 1239i), vec4<bool>(false, true, false, false), vec2<i32>(34902i, 7687i)), Struct_1(-51751i, 17086u, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true), vec2<i32>(21809i, -44049i)), Struct_1(15370i, 0u, vec2<i32>(-26839i, 0i), vec4<bool>(true, false, true, false), vec2<i32>(-45981i, -1i)), Struct_1(11291i, 0u, vec2<i32>(39739i, -1i), vec4<bool>(false, true, false, false), vec2<i32>(1i, 30213i)), Struct_1(2147483647i, 4294967295u, vec2<i32>(64946i, 1i), vec4<bool>(false, false, false, false), vec2<i32>(0i, 20871i)), Struct_1(0i, 4294967295u, vec2<i32>(2147483647i, -37569i), vec4<bool>(false, true, false, true), vec2<i32>(-1i, 4949i)), Struct_1(-89255i, 10315u, vec2<i32>(-1i, 1i), vec4<bool>(true, false, true, true), vec2<i32>(-12996i, 2147483647i)), Struct_1(i32(-2147483648), 0u, vec2<i32>(7333i, i32(-2147483648)), vec4<bool>(false, true, true, false), vec2<i32>(-1i, 2147483647i)), Struct_1(31290i, 89046u, vec2<i32>(33899i, -40950i), vec4<bool>(false, true, false, true), vec2<i32>(-27409i, 43163i)), Struct_1(2147483647i, 0u, vec2<i32>(5139i, -3301i), vec4<bool>(true, true, true, false), vec2<i32>(i32(-2147483648), 1i)));

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-global1.a) == -819f;
    let var_1 = global1.b.d.x & any(!(!vec3<bool>(global1.b.d.x, true, global1.b.d.x)));
    global2 = array<Struct_1, 32>();
    let var_2 = reverseBits(u_input.e.x);
    global0 = array<Struct_2, 9>();
    return !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(908f, global1.d.x))) > -384f, true, !(max(2147483647i, global1.b.c.x) >= -1i), any(select(select(global1.b.d.xy, global1.b.d.zz, vec2<bool>(var_0, var_1)), global1.b.d.yw, var_0)));
}

fn func_2() -> Struct_1 {
    return Struct_1(global1.e.x, ~_wgslsmith_dot_vec3_u32(u_input.e.wxx, min(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(74612u, 5942u, u_input.e.x)), u_input.e.wyx)), vec2<i32>(u_input.c, -_wgslsmith_sub_i32(-global1.b.c.x, _wgslsmith_div_i32(44502i, -44176i))), vec4<bool>(any(global1.b.d.yzw), all(func_3(vec4<i32>(-24082i, u_input.b.x, 57288i, 67839i), ~global1.c.yx)), true, global1.b.d.x), vec2<i32>(~(-max(global1.e.x, u_input.d)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.e.x, 1746i) | vec2<i32>(global1.c.x, global1.e.x), select(global1.e.ww, u_input.b.xz, true)), reverseBits(1i), 1i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> vec4<u32> {
    global1 = Struct_3(_wgslsmith_f_op_f32(sign(global1.d.x)), Struct_1(~(~u_input.d), select((5571u & arg_1.x) ^ ~arg_1.x, 22767u, true), reverseBits(select(abs(vec2<i32>(u_input.b.x, -31641i)), -arg_0.c.xz, func_2().d.ww)), arg_0.b.d, max(-arg_0.e.zx, ~_wgslsmith_add_vec2_i32(vec2<i32>(global1.b.a, 2147483647i), u_input.b.xx))), ~firstLeadingBit(global1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d), global1.d), _wgslsmith_clamp_vec4_i32(~(global1.e | ~vec4<i32>(-55386i, -1i, -1i, arg_0.b.e.x)), firstTrailingBit(vec4<i32>(global1.e.x, _wgslsmith_dot_vec4_i32(arg_0.e, vec4<i32>(u_input.b.x, u_input.b.x, 2238i, -2147483647i)), 2147483647i, reverseBits(-8004i))), select(-(~vec4<i32>(global1.b.c.x, global1.b.a, -35585i, 1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, arg_0.c), _wgslsmith_dot_vec4_i32(global1.e, vec4<i32>(-39218i, 0i, u_input.c, 1i)), 1i, global1.c.x), vec4<bool>(global1.b.d.x, select(false, global1.b.d.x, global1.b.d.x), arg_0.b.d.x, any(arg_0.b.d.ww)))));
    var var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.d.x)), _wgslsmith_f_op_f32(min(136f, global1.a)))) - global1.d.x), -1362f, -766f, global1.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-577f)), _wgslsmith_f_op_f32(min(global1.d.x, global1.a)), _wgslsmith_div_f32(726f, global1.a), global1.a), vec4<f32>(110f, _wgslsmith_f_op_f32(step(-1725f, global1.a)), _wgslsmith_f_op_f32(-global1.a), 1174f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(217f, -822f, 1125f, arg_0.a), vec4<f32>(-1422f, 463f, 416f, arg_0.d.x), global1.b.d)) - vec4<f32>(global1.a, 123f, arg_0.d.x, global1.d.x)))))));
    let var_2 = func_2();
    var var_3 = Struct_1(u_input.b.x, var_2.b, -vec2<i32>(0i, -1i), vec4<bool>(global1.b.d.x, true, false, true), _wgslsmith_div_vec2_i32(vec2<i32>(-global1.b.e.x, 2147483647i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0.c.x, var_2.a), vec2<i32>(global1.b.c.x, 0i) & vec2<i32>(0i, -15979i), ~_wgslsmith_clamp_vec2_i32(var_2.e, vec2<i32>(42053i, u_input.b.x), var_2.e))));
    return abs(countOneBits(~(vec4<u32>(25718u, arg_1.x, 72658u, 12137u) | ~arg_1)));
}

fn func_1() -> vec2<i32> {
    let var_0 = 0i;
    var var_1 = firstLeadingBit(u_input.e);
    var_1 = ~func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - global1.a)), func_2(), vec3<i32>(u_input.c, 20112i, -21435i), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-1871f * -519f)), abs(global1.e >> (u_input.e % vec4<u32>(32u)))), vec4<u32>(~0u, countOneBits(799u), var_1.x >> (33514u % 32u), var_1.x) ^ u_input.e);
    var var_2 = var_1.x;
    var var_3 = !func_3(vec4<i32>(-1i) * -(~vec4<i32>(-1i, 2147483647i, u_input.b.x, u_input.c)), min(vec2<i32>(-2147483647i, 1i), vec2<i32>(-7950i, var_0) | vec2<i32>(u_input.c, -2147483647i)) ^ vec2<i32>(firstTrailingBit(2147483647i), 1i)).wyw;
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(999f - global1.a), Struct_1(-48819i, global1.b.b, _wgslsmith_sub_vec2_i32(global1.c.xz, ~(-vec2<i32>(0i, global1.c.x))), vec4<bool>(true, true, true, true), func_1()), vec3<i32>(global1.b.c.x << (countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 114355u)) % 32u), global1.e.x, ~1281i), global1.d, reverseBits(-vec4<i32>(~(-1i), 26968i, u_input.d | u_input.d, u_input.c)));
    var var_1 = vec2<u32>(min(~func_4(var_0, vec4<u32>(15460u, u_input.a.x, global1.b.b, 10173u) << (vec4<u32>(u_input.e.x, 1u, 1u, u_input.a.x) % vec4<u32>(32u))).x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), ~4294967295u)), var_0.b.b);
    global3 = array<Struct_1, 23>();
    var var_2 = ~(~reverseBits(u_input.e.x));
    let var_3 = !var_0.b.d;
    let var_4 = all(var_3.wy);
    let x = u_input.a;
    s_output = StorageBuffer(-156f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(f32(-1f) * -681f)))), abs(~vec4<u32>(var_0.b.b | 58581u, 14839u, var_1.x, 0u >> (var_1.x % 32u))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(var_0.b.b, 4294967295u, global1.b.b, var_1.x)), _wgslsmith_dot_vec4_u32(~u_input.e, ~u_input.e)));
}

