struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(7856i, vec2<i32>(-58232i, -10080i), Struct_2(4294967295u), vec3<u32>(11618u, 0u, 19000u));

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    global2 = array<Struct_4, 3>();
    global2 = array<Struct_4, 3>();
    global0 = _wgslsmith_add_u32(u_input.b, ((u_input.b << (global1.d.x % 32u)) >> (_wgslsmith_dot_vec2_u32(global1.d.zy, select(vec2<u32>(66058u, 4500u), vec2<u32>(0u, 4294967295u), vec2<bool>(false, true))) % 32u)) | 0u);
    global0 = u_input.e;
    let var_0 = _wgslsmith_f_op_f32(ceil(-196f));
    return ~(~reverseBits(vec4<i32>(global1.b.x, u_input.c, global1.b.x, 2147483647i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> Struct_2 {
    let var_0 = max(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 4294967295u, global1.c.a, u_input.b), vec4<u32>(4294967295u, arg_2.c.a, 54465u, u_input.e)), ~vec4<u32>(0u, 1u, global1.c.a, 0u), all(vec2<bool>(false, arg_1.a))) ^ _wgslsmith_add_vec4_u32(min(vec4<u32>(1u, arg_1.c, u_input.b, global1.c.a), vec4<u32>(global1.c.a, 78851u, 76068u, arg_3)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(arg_1.b.x, 0u, 1u, 1u))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c, 73074u, arg_2.d.x, 22640u), ~vec4<u32>(1u, 1u, 108374u, arg_2.d.x)) | vec4<u32>(arg_1.b.x, _wgslsmith_dot_vec2_u32(global1.d.zz, vec2<u32>(4294967295u, global1.c.a)), ~arg_0.x, _wgslsmith_add_u32(40258u, 23427u))) ^ vec4<u32>(~_wgslsmith_mod_u32(~1u, ~0u), ~arg_0.x, 1u, firstLeadingBit(_wgslsmith_clamp_u32(abs(63787u), arg_3, arg_1.b.x)));
    var var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, global1.a, -2147483647i)), max(func_3(), vec4<i32>(49115i, -34800i, u_input.a.x, -1i))), -vec4<i32>(arg_2.b.x, u_input.a.x, ~2746i, abs(global1.b.x)) & u_input.a);
    global2 = array<Struct_4, 3>();
    var var_2 = _wgslsmith_dot_vec4_i32((firstLeadingBit(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(var_1.x, arg_2.a, 18209i, arg_2.a), u_input.a)) & _wgslsmith_sub_vec4_i32(abs(u_input.a), vec4<i32>(u_input.d.x, var_1.x, -2147483647i, arg_2.a))) ^ u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -u_input.a.x >> ((arg_3 << (arg_1.b.x % 32u)) % 32u), 33231i), abs(-abs(vec4<i32>(-2147483647i, 23498i, 2147483647i, 1i))), u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, 1837f) * vec2<f32>(1422f, -1146f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(182f, 457f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-766f, 761f) + vec2<f32>(-523f, -491f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -159f) - vec2<f32>(-158f, -350f)), select(vec2<bool>(true, false), vec2<bool>(arg_1.a, arg_1.a), false)))), vec2<bool>(!(!arg_1.a), false | any(vec3<bool>(arg_1.a, false, true))))));
    return Struct_2(firstTrailingBit(~(~_wgslsmith_add_u32(u_input.b, arg_0.x))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = max(max(arg_2.b, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12275i, u_input.c, arg_2.b.x, global1.a), vec4<i32>(-13534i, -35170i, global1.a, 61742i)), 9611i)) ^ min(-vec2<i32>(arg_2.b.x, u_input.a.x) & (u_input.d.zy << (vec2<u32>(global1.c.a, 0u) % vec2<u32>(32u))), ~u_input.a.wz), vec2<i32>(-1i, 0i));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, -738f, arg_1.x)));
    var_0 = vec2<i32>(42352i, ~(-26643i));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(abs(vec3<u32>(1u, 4294967295u, arg_2.d.x)) ^ abs(arg_2.d)), vec3<u32>(select(~arg_2.d.x, _wgslsmith_add_u32(global1.c.a, 38899u), 4574u != arg_2.c.a), 0u, 46749u), arg_2.d));
    let var_3 = true;
    return ~(~abs(vec2<i32>(_wgslsmith_sub_i32(var_0.x, global1.a), 0i)));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global1 = Struct_3(_wgslsmith_div_i32(countOneBits(min(global1.a, global1.b.x)), global1.a & _wgslsmith_div_i32(u_input.d.x, 1i)) << (4294967295u % 32u), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-2147483647i, -30648i)), u_input.a.xx, func_4(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -665f)), vec3<f32>(_wgslsmith_f_op_f32(733f + -1196f), -354f, 854f), Struct_3(global1.a, -global1.b, func_2(vec2<u32>(u_input.b, global1.d.x), Struct_5(false, vec3<u32>(arg_0.a, 20531u, arg_0.a), 0u), Struct_3(-11361i, vec2<i32>(1i, -1i), global1.c, vec3<u32>(arg_0.a, 53492u, global1.d.x)), 0u), global1.d))), func_2(~global1.d.zx, Struct_5(true, ~(global1.d | vec3<u32>(global1.d.x, arg_0.a, 0u)), ~arg_0.a >> (~u_input.b % 32u)), Struct_3(1i, u_input.a.zx, Struct_2(u_input.b), max(~vec3<u32>(46316u, global1.d.x, 15873u), global1.d)), ~_wgslsmith_sub_u32(global1.c.a, arg_0.a)), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(29837u, 4294967295u, 0u), ~vec3<u32>(10820u, 0u, 0u), true), vec3<u32>(_wgslsmith_div_u32(arg_0.a, 1u) ^ global1.c.a, 4294967295u << (~arg_0.a % 32u), firstTrailingBit(110591u)), global1.d));
    global1 = Struct_3(-51239i, _wgslsmith_div_vec2_i32(vec2<i32>(-(~u_input.d.x), -2147483647i), vec2<i32>(-29259i, 0i) << (vec2<u32>(0u, arg_0.a) % vec2<u32>(32u))), arg_0, vec3<u32>(_wgslsmith_add_u32(~57054u, global1.d.x), ~17081u ^ select(~6795u, abs(u_input.b), all(vec4<bool>(true, false, true, false))), max(abs(0u), _wgslsmith_dot_vec2_u32(global1.d.xz, vec2<u32>(7370u, 4294967295u) >> (global1.d.yz % vec2<u32>(32u))))));
    let var_0 = u_input.b;
    global1 = Struct_3(firstTrailingBit(global1.b.x), min(max(reverseBits(u_input.a.wx | vec2<i32>(41886i, u_input.a.x)), vec2<i32>(u_input.d.x, 69142i) ^ func_4(vec2<f32>(-806f, 102f), vec3<f32>(-1000f, 381f, -538f), Struct_3(global1.a, vec2<i32>(0i, 47691i), arg_0, vec3<u32>(u_input.e, arg_0.a, var_0)))), func_3().xz), arg_0, ~(~abs(min(global1.d, vec3<u32>(4294967295u, var_0, 12300u)))));
    global1 = Struct_3(u_input.d.x, -(~(-global1.b)) << (~_wgslsmith_sub_vec2_u32(global1.d.zy, global1.d.zz) % vec2<u32>(32u)), func_2(firstLeadingBit(vec2<u32>(min(4294967295u, arg_0.a), 68761u)), Struct_5(true, _wgslsmith_clamp_vec3_u32(select(global1.d, global1.d, true), global1.d, vec3<u32>(91667u, var_0, var_0)), var_0), Struct_3(-1i, vec2<i32>(i32(-1i) * -1996i, global1.b.x), Struct_2(u_input.e >> (30033u % 32u)), abs(global1.d) >> (global1.d % vec3<u32>(32u))), u_input.e), vec3<u32>(~(~(~0u)), ~16952u, 1u));
    return Struct_3(i32(-1i) * -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-24043i, -6749i, -28336i), vec3<i32>(global1.b.x, -492i, -1i))), vec2<i32>(_wgslsmith_sub_i32(-12697i, -u_input.c), 0i) & vec2<i32>(countOneBits(~22422i), u_input.a.x), arg_0, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~(~global1.d), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, 1u), vec3<u32>(global1.c.a, 1u, 4294967295u)) >> (vec3<u32>(4294967295u, global1.d.x, u_input.e) % vec3<u32>(32u))), select(~(global1.d << (global1.d % vec3<u32>(32u))), ~abs(vec3<u32>(arg_0.a, 46135u, 52803u)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_2(40649u));
    let var_0 = -2147483647i << (~func_2(vec2<u32>(~33293u, 1u), Struct_5(true, vec3<u32>(4294967295u, u_input.e, global1.d.x), ~39160u), func_1(func_2(global1.d.yx, Struct_5(true, vec3<u32>(u_input.e, u_input.e, u_input.b), global1.c.a), Struct_3(u_input.a.x, vec2<i32>(global1.a, 37551i), global1.c, vec3<u32>(u_input.e, global1.c.a, 1u)), u_input.b)), max(4294967295u, ~u_input.b)).a % 32u);
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(trunc(545f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(671f - 119f)))), -527f))));
    let var_3 = func_1(global1.c).c.a;
    global1 = Struct_3(func_1(global1.c).b.x << (_wgslsmith_add_u32(0u, global1.d.x) % 32u), reverseBits(vec2<i32>(1i, max(-1i, global1.b.x) << (~global1.d.x % 32u))), func_2(~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(79239u, var_1), global1.d.zz), reverseBits(vec2<u32>(23716u, global1.d.x))), Struct_5(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), global1.d, var_3), func_1(global1.c), 1u), vec3<u32>(var_1, ~(~(~4294967295u)), var_1 >> (_wgslsmith_add_u32(var_3, global1.d.x & u_input.e) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a | _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(~u_input.a, max(vec4<i32>(-1i, 34418i, 2147483647i, var_0), u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)))), vec4<u32>(global1.c.a, min(abs(u_input.b), 4294967295u), _wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(global1.d)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 20817u, global1.d.x)), global1.d & vec3<u32>(var_3, 1u, 17032u))), var_1));
}

