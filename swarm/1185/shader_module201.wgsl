struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> f32 {
    global0 = !any(select(!(!vec2<bool>(arg_2, false)), !select(vec2<bool>(true, arg_2), vec2<bool>(false, true), arg_2), select(select(vec2<bool>(arg_2, true), vec2<bool>(false, arg_2), arg_2), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, arg_2), vec2<bool>(false, false)))));
    global0 = all(!select(select(select(vec4<bool>(true, true, arg_2, true), vec4<bool>(false, false, false, false), vec4<bool>(arg_2, false, arg_2, arg_2)), vec4<bool>(arg_2, arg_2, arg_2, arg_2), all(vec2<bool>(arg_2, true))), !vec4<bool>(arg_2, true, arg_2, false), arg_2));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(~(~_wgslsmith_mult_i32(arg_1.x, u_input.a.x)) & min(-2147483647i, _wgslsmith_clamp_i32(min(arg_1.x, -2147483647i), ~15723i, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-860f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_3(vec3<f32>(274f, -109f, 431f), 29138u, true))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(706f, -328f), vec2<f32>(260f, -288f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 405f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1171f, 340f))))))), 4294967295u, arg_2.x, select(vec4<bool>(!(!arg_2.x), all(arg_2), true, true), select(select(select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), arg_2.x), !vec4<bool>(true, true, true, arg_2.x), all(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), select(!vec4<bool>(arg_2.x, false, false, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), true), false), !vec4<bool>(false && arg_2.x, true, false, !arg_2.x)));
    global0 = false;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)), 1695f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - -1807f) * -147f))), Struct_1(arg_1.x, var_0.b, firstLeadingBit(arg_0.x), all(var_0.e.ywx), var_0.e));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_2(vec4<u32>(1u, _wgslsmith_div_u32(~u_input.d.x, 50178u), arg_1.b.c, u_input.c), firstTrailingBit(countOneBits(u_input.a)), !(!vec2<bool>(true, any(arg_2))));
    var var_1 = Struct_1(u_input.a.x, vec2<f32>(572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1758f), 400f, -2147483647i > arg_1.b.a)))), 22919u, !(all(vec4<bool>(var_0.b.e.x, arg_1.b.e.x, arg_2.x, true)) | func_2(vec4<u32>(54467u, arg_3.x, var_0.b.c, 4294967295u), u_input.a, arg_2.zz).b.d) && true, vec4<bool>(select(any(arg_1.b.e.zyz), true, true) & ((82326u < arg_1.b.c) & arg_1.b.e.x), all(func_2(vec4<u32>(8824u, var_0.b.c, 1u, var_0.b.c), firstTrailingBit(u_input.a), vec2<bool>(false, arg_2.x)).b.e), func_2((vec4<u32>(64146u, 1u, 117521u, 4294967295u) ^ vec4<u32>(arg_3.x, 4294967295u, u_input.b, arg_3.x)) >> (select(vec4<u32>(var_0.b.c, 0u, 1u, arg_3.x), vec4<u32>(arg_1.b.c, arg_3.x, arg_3.x, var_0.b.c), var_0.b.e.x) % vec4<u32>(32u)), u_input.a, func_2(~vec4<u32>(1u, 32473u, arg_3.x, 1u), vec4<i32>(1i, -1i, 1i, -25822i) & vec4<i32>(var_0.b.a, 0i, -35118i, -60802i), arg_2.yy).b.e.xw).b.d, var_0.b.d));
    let var_2 = arg_1;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_sub_vec2_i32(-u_input.a.yx, vec2<i32>(var_0.b.a, 1i));
    return func_2(vec4<u32>(41467u, 67421u, arg_3.x, reverseBits(_wgslsmith_mod_u32(35345u, var_3.b.c))), abs(~(u_input.a & vec4<i32>(var_0.b.a, -2147483647i, -2147483647i, var_1.a))), func_2(vec4<u32>(~abs(var_3.b.c), 8610u, 10658u, max(4294967295u & var_1.c, 4294967295u)), ~u_input.a ^ select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, var_0.b.a, -19447i, arg_0), u_input.a), -vec4<i32>(var_0.b.a, var_3.b.a, -38670i, -11090i), arg_1.b.e.x), vec2<bool>(!var_1.e.x, arg_2.x)).b.e.wy).b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_u32(arg_3, 95537u);
    var var_1 = arg_0;
    global0 = arg_0.d;
    let var_2 = u_input.a.ww;
    var_1 = arg_0;
    return !vec3<bool>(select(false, all(select(var_1.e.xww, vec3<bool>(false, var_1.e.x, arg_0.e.x), arg_0.e.wyw)), true), arg_0.d != !var_1.e.x, true);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_3.c.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1397f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(round(arg_0.x)))), -1000f), true));
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = var_0;
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1015f, 1937f, -234f, 292f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1858f, -569f, 831f, -457f), vec4<f32>(532f, 876f, 538f, 413f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, -386f, 1493f, 733f)), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(950f, 879f))), _wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(max(-319f, -484f))), vec4<bool>(true, true, true | all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))))), select(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, true), func_4(func_1(u_input.a.x, Struct_2(vec3<f32>(-1208f, -918f, 617f), Struct_1(-50710i, vec2<f32>(1402f, 1000f), var_0.x, false, vec4<bool>(true, true, true, true))), vec4<bool>(false, false, false, false), u_input.e), vec3<f32>(-599f, -1002f, 848f), 1u, _wgslsmith_sub_u32(4294967295u, u_input.b))), vec3<bool>(true, all(vec2<bool>(false, true)) || true, all(vec4<bool>(false, false, false, false))), true), ~var_0.zz, Struct_3(Struct_1(~2595i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -386f)), 54680u, !any(vec2<bool>(true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), func_1(u_input.a.x, Struct_2(vec3<f32>(1002f, -502f, -675f), Struct_1(u_input.a.x, vec2<f32>(804f, 203f), 1u, true, vec4<bool>(false, false, true, false))), vec4<bool>(false, false, true, true), var_0.xy).e.x)), ~36896u, func_2(~vec4<u32>(37u, 1u, var_1.x, 10216u) | vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.c), _wgslsmith_clamp_vec4_i32(u_input.a | vec4<i32>(2147483647i, -9474i, u_input.a.x, u_input.a.x), ~u_input.a, reverseBits(vec4<i32>(-41832i, u_input.a.x, 1i, u_input.a.x))), vec2<bool>(true, true)), 41750u | u_input.e.x));
    var_1 = var_0;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.b.b.x, _wgslsmith_f_op_f32(-2095f + -1000f))), var_2.b.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f + -506f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b.x * 1088f) * _wgslsmith_f_op_f32(-var_2.b.b.x))), 517f, true)), any(var_2.b.e)));
    var_1 = vec3<u32>(var_0.x, ~min(1u, 52834u), 1u) & vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_1.x, func_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-542f, -362f, var_2.b.b.x, -813f))), !vec3<bool>(false, var_2.b.d, false), ~var_1.yx, Struct_3(Struct_1(var_2.b.a, var_2.b.b, 4294967295u, true, vec4<bool>(true, var_2.b.d, true, var_2.b.d)), 1702u, var_2, 48387u)).b.c), u_input.d.x);
    var var_4 = vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-1415f + 359f), 880f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-900f, var_4.x)), _wgslsmith_f_op_vec2_f32(min(var_4.zy, _wgslsmith_f_op_vec2_f32(-var_4.xx))))), ~var_1.x, _wgslsmith_clamp_vec3_u32(var_0, var_0, _wgslsmith_add_vec3_u32(var_0, ~vec3<u32>(var_1.x, 17131u, u_input.b))), ~vec2<u32>(~1u, abs(u_input.d.x)), var_2.b.a);
}

