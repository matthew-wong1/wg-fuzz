struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(580f)) + _wgslsmith_f_op_f32(step(-689f, 723f))), _wgslsmith_f_op_f32(floor(1284f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 310f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -1000f, arg_0))))))));
    let var_1 = Struct_2(var_0.a);
    let var_2 = ~u_input.a != _wgslsmith_sub_i32(~(~(-1i)), select(~u_input.a, -1i, true) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
    let var_4 = u_input.a;
    return 42474i;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = Struct_4(vec4<u32>(0u, ~select(min(4294967295u, arg_1.a.x), u_input.b << (28950u % 32u), all(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x))), 11894u, 12674u >> (~(~1u) % 32u)), arg_1.b, Struct_1(abs(abs(vec3<i32>(u_input.a, arg_0, -7084i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.d)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.d)))), arg_1.d))), all(vec4<bool>(select(true, false, !arg_1.e), arg_1.b.x & select(arg_1.b.x, true, true), (u_input.b > arg_1.a.x) & true, (arg_1.c.a.x >> (4126u % 32u)) > _wgslsmith_mult_i32(2147483647i, arg_1.c.a.x))));
    var var_1 = -1000f;
    global0 = arg_1.a.yyy;
    let var_2 = -(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2530f)), ~firstLeadingBit(0i)) ^ countOneBits(max(select(u_input.a, -34688i, false), -2147483647i)));
    let var_3 = arg_1.a.wz;
    return 2147483647i;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = vec4<i32>(-(~max(0i, -arg_2.a.x)), arg_2.a.x, arg_0.d, func_4(func_3(594f), Struct_4(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, 29259u, 82196u), vec4<u32>(u_input.b, global0.x, 14393u, 0u)), vec3<bool>(true, true, true), arg_2, arg_0.a.a.x, true), _wgslsmith_f_op_f32(-1981f + arg_1)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(arg_2.a, vec3<i32>(-2147483647i, u_input.a, u_input.a), false), vec3<i32>(-42290i, arg_2.a.x, 1i)), 0i));
    let var_1 = vec2<i32>(var_0.x, ~(~(-13691i)));
    var var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.yyx, ~var_0.wxz), 41426i, i32(-1i) * -44993i));
    var_2 = arg_2;
    var var_3 = arg_0.c.a;
    return !any(select(vec3<bool>(1369f != arg_1, false, any(vec4<bool>(false, false, false, false))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, true)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2189f, -351f, -1173f), vec3<f32>(283f, -1000f, 1875f), arg_0.x)), vec3<f32>(653f, 522f, -291f))) + vec3<f32>(_wgslsmith_f_op_f32(-577f + 645f), _wgslsmith_f_op_f32(select(453f, -766f, false)), _wgslsmith_f_op_f32(sign(195f))))), max(_wgslsmith_mod_vec2_i32(max(abs(arg_1.yw), max(vec2<i32>(2147483647i, 0i), arg_1.yz)), vec2<i32>(~u_input.a, -arg_1.x)), arg_1.wy), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, 771f, 1689f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(602f, 656f, -474f) * vec3<f32>(-2026f, -1000f, 1079f))))), firstLeadingBit(_wgslsmith_sub_i32(u_input.a, -_wgslsmith_dot_vec3_i32(arg_1.yyx, arg_1.xxw))));
    let var_1 = Struct_1(vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, 32393i)));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 236f, var_0.a.a.x), vec3<f32>(1267f, 635f, -1476f)) - vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(floor(1124f)), _wgslsmith_f_op_f32(-var_0.a.a.x)))), var_1.a.xx, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a) * _wgslsmith_f_op_vec3_f32(select(var_0.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(-556f, var_0.a.a.x, 1338f), var_0.c.a), true)))), var_1.a.x);
    var var_2 = _wgslsmith_sub_i32(var_1.a.x, max(var_0.d, -1i));
    var var_3 = vec2<bool>(arg_3, !(!(!(global0.x <= 1u))));
    return (1730i ^ u_input.a) << (((_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.zx, vec2<u32>(u_input.b, global0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, global0.x), vec3<u32>(4294967295u, global0.x, global0.x))) & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 1u, 19172u, u_input.b), vec4<u32>(4294967295u, u_input.b, 38888u, 0u)), vec4<u32>(31059u, global0.x, 4294967295u, 7292u) << (vec4<u32>(0u, 4294967295u, 12574u, 9226u) % vec4<u32>(32u)))) & ~1u) % 32u);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    let var_0 = !(((2147483647i >> (~global0.x % 32u)) & u_input.a) == func_5(vec2<bool>(true, true), vec4<i32>(31245i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1), vec2<i32>(-2147483647i, -43000i)), -10146i, _wgslsmith_div_i32(41167i, 2147483647i)), vec2<bool>(false, true), !func_2(Struct_3(Struct_2(vec3<f32>(-175f, -1120f, 803f)), vec2<i32>(1i, u_input.a), Struct_2(vec3<f32>(-1106f, -447f, arg_0.x)), -101989i), -513f, Struct_1(vec3<i32>(arg_1, u_input.a, 62814i)))));
    let var_1 = vec4<u32>(4294967295u, ~u_input.b, 0u, 0u << (global0.x % 32u));
    let var_2 = Struct_1(max(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(u_input.a, u_input.a, 10330i)) << (vec3<u32>(1u, abs(6620u), 25386u) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(-vec3<i32>(32476i, 1i, arg_1), -vec3<i32>(12303i, 10600i, -44759i))));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(min(arg_0.x, -2313f))))), -(~_wgslsmith_sub_vec2_i32(var_2.a.xx, vec2<i32>(36114i, u_input.a)) << (var_1.yz % vec2<u32>(32u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-606f, 155f)))), 840f, arg_0.x)), firstLeadingBit(-43600i));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global0 = ~vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(global0.zx, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(global0.yy, global0.xz), global0.yz << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), global0.x);
    let var_0 = min(~(~(~(u_input.b << (4294967295u % 32u)))), _wgslsmith_mult_u32(u_input.b << (global0.x % 32u), u_input.b));
    global0 = vec3<u32>(~u_input.b, ~u_input.b, 1u);
    global0 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(52948u, global0.x)), u_input.b & var_0)), vec3<u32>(countOneBits(_wgslsmith_div_u32(u_input.b, var_0) ^ (36426u ^ global0.x)), _wgslsmith_div_u32(1u & var_0, abs(30816u)) ^ (u_input.b >> (1u % 32u)), var_0), ~vec3<u32>(global0.x, global0.x, ~max(0u, 1u)));
    global0 = ~((vec3<u32>(~var_0, ~10555u, 44639u) & (min(vec3<u32>(4188u, global0.x, var_0), vec3<u32>(var_0, global0.x, 23664u)) << ((vec3<u32>(global0.x, var_0, 12543u) | vec3<u32>(global0.x, 1u, var_0)) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 0u, 1u, 66479u), abs(vec4<u32>(4294967295u, 4294967295u, 5514u, global0.x))), u_input.b, 15991u) % vec3<u32>(32u)));
    return Struct_1(vec3<i32>(arg_1.d | _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(arg_0.b, arg_0.b)), ~u_input.a, _wgslsmith_add_i32(2147483647i, -_wgslsmith_add_i32(u_input.a, -16095i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_6(func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-856f, -314f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, -685f)))), _wgslsmith_div_i32(u_input.a, 60156i)), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1243f, 578f, -548f) + vec3<f32>(-175f, 617f, 120f))), vec2<i32>(-u_input.a, -u_input.a), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(565f, -2801f) * vec2<f32>(-691f, 2519f)), 0i | u_input.a).c, -countOneBits(-1i))), vec4<i32>(_wgslsmith_mult_i32(-(-27344i ^ u_input.a), -16983i), u_input.a, abs(~(-2147483647i)), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-537f, -554f, 1098f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1399f, -1547f, -434f)))))), true | all(vec2<bool>(true, true)), Struct_2(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f - -1000f)), _wgslsmith_f_op_f32(max(-922f, -558f)))));
    var var_1 = !select(vec3<bool>(all(vec4<bool>(var_0.d, var_0.d, false, var_0.d)), var_0.d, true), vec3<bool>(!var_0.d, true, any(select(vec2<bool>(false, false), vec2<bool>(var_0.d, var_0.d), var_0.d))), var_0.d);
    let var_2 = u_input.b;
    var_1 = !(!vec3<bool>(var_0.d, var_0.d, select(var_1.x, true, false) | true));
    let var_3 = vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(select(var_0.e.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.x, 540f)) + _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), var_0.c.x), all(vec4<bool>(global0.x >= global0.x, 1801f <= var_0.e.a.x, var_0.d & false, false)))), var_0.c.x);
    let var_4 = Struct_5(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-415f, var_0.e.a.x, 164f), var_3, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -524f))))), false, func_1(var_3.zy, firstLeadingBit(~65899i)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1981f * var_4.e.a.x), _wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(60297u, u_input.b), reverseBits(global0.zx)))), -abs(select(var_0.b.zz, select(var_0.b.yw, vec2<i32>(var_4.b.x, var_0.b.x), var_1.zz), all(vec3<bool>(var_1.x, var_4.d, var_0.d)))));
}

