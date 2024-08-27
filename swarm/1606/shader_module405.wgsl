struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1063f, 640f), vec2<f32>(-276f, -268f), vec2<f32>(-112f, -1601f), vec2<f32>(-1000f, -420f), vec2<f32>(1439f, -1034f), vec2<f32>(416f, -474f), vec2<f32>(1108f, -696f), vec2<f32>(-1313f, 469f), vec2<f32>(-741f, -1000f), vec2<f32>(-1946f, -226f), vec2<f32>(-459f, -704f), vec2<f32>(498f, -2194f), vec2<f32>(-2006f, -1002f), vec2<f32>(140f, 1000f), vec2<f32>(297f, 358f), vec2<f32>(1166f, 1438f), vec2<f32>(1878f, -154f), vec2<f32>(1080f, 2096f), vec2<f32>(108f, 548f), vec2<f32>(-1848f, 685f), vec2<f32>(-642f, -958f), vec2<f32>(-656f, 2245f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-446f * -199f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(857f * 1532f), _wgslsmith_f_op_f32(min(1000f, -208f)), -802f, _wgslsmith_f_op_f32(535f * 369f)) + vec4<f32>(-444f, -659f, 851f, -192f))), u_input.a, Struct_1(vec3<bool>(true & (u_input.a > u_input.a), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), _wgslsmith_div_f32(303f, -350f) == _wgslsmith_f_op_f32(select(-1258f, 1573f, false))), _wgslsmith_f_op_f32(step(-1082f, -1000f))), Struct_1(vec3<bool>(true, true, true), 2166f));
    var var_1 = true;
    var var_2 = Struct_3(Struct_2(var_0.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), var_0.b), u_input.a, Struct_1(var_0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.b)))), var_0.e), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1004i, u_input.b.x), -select(reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, -55411i)), abs(vec3<i32>(1i, u_input.b.x, -35340i)), vec3<bool>(true, false, false))), 4294967295u, Struct_1(select(vec3<bool>(all(vec4<bool>(var_0.d.a.x, false, true, var_0.e.a.x)), var_0.e.a.x, var_0.d.b > var_0.e.b), !(!vec3<bool>(var_0.d.a.x, true, var_0.e.a.x)), var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1582f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.b + var_0.e.b) - _wgslsmith_f_op_f32(max(162f, -108f))))), Struct_1(vec3<bool>(!(var_0.d.a.x || var_0.d.a.x), (var_0.e.a.x && false) & false, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.b)))));
    var var_3 = Struct_3(var_2.a, vec3<i32>(~(~(-1i)), var_2.b.x & var_2.b.x, u_input.b.x), reverseBits(u_input.a), var_0.d, var_2.e);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.xwy)) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_3.a.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.a.b.x)), _wgslsmith_f_op_f32(ceil(-1277f))), 391f)) * var_0.b.xxz);
    return 89127u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> vec4<u32> {
    var var_0 = ~28055u;
    let var_1 = Struct_4(-countOneBits(vec4<i32>(i32(-1i) * -4717i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x, -2147483647i >> (u_input.a % 32u))), Struct_1(vec3<bool>(true, true, true), -545f));
    let var_2 = ~u_input.a;
    let var_3 = var_1.b.a.x;
    let var_4 = vec4<bool>(all(!vec4<bool>(true, true, true, var_1.b.a.x)), _wgslsmith_f_op_f32(-arg_2) > arg_2, var_3, false);
    return ~(~firstTrailingBit(vec4<u32>(62728u, firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(699u, 4294967295u, 1u)), 1u >> (0u % 32u))));
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> f32 {
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    let var_0 = func_4(vec3<u32>(reverseBits(abs(_wgslsmith_mod_u32(u_input.a, 1u))), ~(~u_input.a << (61917u % 32u)), 66650u >> (func_3() % 32u)), select(vec3<u32>(~1u, 472u, u_input.a), vec3<u32>(firstLeadingBit(~u_input.a), u_input.a, ~(u_input.a ^ 4294967295u)), false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(-619f * 433f)) + arg_1.a), _wgslsmith_f_op_f32(748f * arg_1.a), !(arg_1.b && false))));
    var var_1 = Struct_4(~abs(min(vec4<i32>(arg_1.d.x, -34431i, -2147483647i, -2147483647i) << (vec4<u32>(0u, 0u, var_0.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-19777i, 8244i, 2147483647i, -2352i))), Struct_1(!(!vec3<bool>(arg_1.c, false, arg_1.b)), 1f));
    var_1 = Struct_4(-_wgslsmith_add_vec4_i32(select(var_1.a, vec4<i32>(-28757i, 15909i, arg_1.d.x, var_1.a.x), select(vec4<bool>(false, var_1.b.a.x, var_1.b.a.x, arg_0), vec4<bool>(arg_1.c, arg_0, arg_1.b, arg_0), true)), ~(-var_1.a)), var_1.b);
    return _wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(800f * -628f));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = array<vec2<f32>, 22>();
    let var_0 = firstLeadingBit(~firstLeadingBit(u_input.b));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.x, i32(-1i) * -71554i), vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(21707i, -15181i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 58787i), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b))), -16713i));
    global0 = array<vec2<f32>, 22>();
    var var_2 = Struct_3(Struct_2(Struct_1(select(!arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, Struct_5(-889f, true, false, vec2<i32>(u_input.b.x, -2147483647i)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -582f, 179f, -168f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1189f, 1908f, 513f, -193f), vec4<f32>(-1079f, -615f, 408f, 1039f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, -1000f, -804f, -1306f)))), ~0u, Struct_1(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-262f)) + 468f)), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), arg_0.x, all(vec4<bool>(arg_0.x, true, true, arg_0.x))), -781f)), vec3<i32>(2147483647i, i32(-1i) * -(var_1.x ^ 2147483647i), -1i), select(_wgslsmith_dot_vec3_u32(vec3<u32>(28903u >> (arg_1.x % 32u), u_input.a & u_input.a, func_4(vec3<u32>(u_input.a, arg_1.x, arg_1.x), arg_1.wzx, -1274f).x), arg_1.xwy), 22u, any(select(select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, true)), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, false, arg_0.x, true), true), true))), Struct_1(!arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(200f, 1081f))) * _wgslsmith_f_op_f32(-123f + _wgslsmith_f_op_f32(-362f * -169f)))), Struct_1(vec3<bool>(!(false == arg_0.x), true, select(false || arg_0.x, any(vec2<bool>(arg_0.x, arg_0.x)), true)), _wgslsmith_f_op_f32(-1f)));
    return select(select(select(vec3<bool>(all(vec2<bool>(true, var_2.d.a.x)), any(vec2<bool>(arg_0.x, true)), false & var_2.a.d.a.x), !select(var_2.e.a, var_2.a.d.a, false), !select(vec3<bool>(arg_0.x, false, false), var_2.a.e.a, var_2.d.a)), arg_0, !(!vec3<bool>(var_2.d.a.x, false, var_2.d.a.x))), !vec3<bool>(all(arg_0), !arg_0.x, !any(var_2.d.a)), !(!vec3<bool>(any(vec3<bool>(arg_0.x, false, var_2.a.a.a.x)), var_2.a.c > 67624u, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(30761u, ~u_input.a), ~4590u);
    let var_1 = Struct_4(abs(firstLeadingBit(vec4<i32>(u_input.b.x, 2147483647i, 24288i, _wgslsmith_mod_i32(0i, u_input.b.x)))), Struct_1(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), func_1(vec3<bool>(false, false, true), vec4<u32>(45554u, 74789u, 11828u, var_0)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, Struct_5(-1497f, true, false, u_input.b))))))));
    global0 = array<vec2<f32>, 22>();
    global0 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~1791i, func_4(vec3<u32>(1u, ~78785u, 29246u), (~vec3<u32>(u_input.a, var_0, var_0) >> (select(vec3<u32>(39431u, 4294967295u, 1u), vec3<u32>(60438u, 0u, 0u), vec3<bool>(true, true, true)) % vec3<u32>(32u))) << (reverseBits(~vec3<u32>(20844u, 36384u, var_0)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(var_1.b.b))).x);
}

