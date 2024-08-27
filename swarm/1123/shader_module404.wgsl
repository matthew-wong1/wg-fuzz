struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    let var_0 = ~select(_wgslsmith_add_vec3_u32(~abs(arg_2.e.a.c.xwx), arg_2.e.c.c.xwz), reverseBits(vec3<u32>(u_input.c, ~4294967295u, ~arg_2.e.c.e.a)), arg_2.e.c.e.d);
    let var_1 = Struct_4(firstTrailingBit(select(vec4<u32>(1u, var_0.x, ~50040u, ~22818u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e.c.e.a, 27139u, arg_0.a, 1u), arg_2.a), vec4<bool>(true | arg_0.d.x, !arg_0.d.x, arg_2.e.a.b || arg_0.d.x, false))), false, ~46925u, arg_0.c, Struct_3(Struct_2(!(!vec4<bool>(arg_0.d.x, arg_0.d.x, arg_2.e.a.b, arg_3)), arg_2.e.a.b, ~abs(arg_2.e.a.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.e.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.a.d.x, arg_2.e.c.d.x)), !arg_0.d.zx)), arg_0), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(arg_2.e.c.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.e.b.x, 973f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.e.c.d * arg_2.e.a.d)))), Struct_2(arg_2.e.a.a, all(select(vec4<bool>(arg_3, true, arg_3, arg_2.e.c.e.d.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_3, true, arg_2.b, arg_2.e.a.a.x))), vec4<u32>(23700u, arg_2.c, arg_0.a, 103707u) & arg_2.a, arg_2.e.a.d, arg_0)));
    let var_2 = -1513f;
    var var_3 = select(select(!var_1.e.c.a, !(!vec4<bool>(true, var_1.e.a.b, var_1.e.a.a.x, var_1.e.a.b)), true), arg_2.e.c.a, arg_2.e.a.b);
    let var_4 = arg_2.e.a.e;
    return arg_2.e.c.c;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~vec2<i32>(_wgslsmith_add_i32(1i, u_input.a), -11256i);
    var var_1 = Struct_4(max(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), arg_0.a.c), all(vec3<bool>(~29215u != u_input.c, all(vec4<bool>(true, arg_0.c.e.d.x, arg_0.c.a.x, false)), arg_0.a.e.d.x)), ~arg_0.c.e.a, var_0, arg_0);
    var_1 = Struct_4(var_1.a, any(vec2<bool>(false, !all(arg_0.c.a.xyy))), firstTrailingBit(1u), var_0, Struct_3(Struct_2(vec4<bool>(arg_0.a.b, all(vec2<bool>(false, arg_0.c.a.x)), var_1.b, false), true, func_3(var_1.e.a.e, arg_2.wzz, Struct_4(var_1.e.a.c, true, 4294967295u, var_0, Struct_3(arg_0.a, vec2<f32>(var_1.e.b.x, arg_0.a.d.x), var_1.e.c)), false) & (arg_0.a.c << (var_1.a % vec4<u32>(32u))), var_1.e.c.d, Struct_1(0u, abs(arg_0.a.e.c), select(vec2<i32>(0i, -29654i), vec2<i32>(u_input.b, 0i), vec2<bool>(arg_0.a.e.d.x, false)), !var_1.e.a.a.ywy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 2421f)))), Struct_2(!vec4<bool>(arg_0.a.e.d.x, arg_0.c.a.x, var_1.e.a.a.x, var_1.e.c.a.x), arg_0.c.e.d.x, var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(991f, -544f)) + arg_0.a.d), Struct_1(7711u, abs(arg_0.a.e.b), -vec2<i32>(-2147483647i, -2566i), select(vec3<bool>(true, arg_0.c.e.d.x, arg_0.c.b), arg_0.a.e.d, var_1.e.c.e.d)))));
    var var_2 = var_1.e.b.x;
    let var_3 = Struct_2(select(!vec4<bool>(true, var_1.e.a.a.x, !var_1.b, arg_0.c.a.x), select(select(var_1.e.a.a, !var_1.e.c.a, var_1.b), select(select(vec4<bool>(true, false, arg_0.c.a.x, true), var_1.e.c.a, vec4<bool>(arg_0.a.a.x, false, arg_0.c.e.d.x, var_1.b)), vec4<bool>(var_1.e.c.a.x, false, var_1.e.a.b, false), select(vec4<bool>(true, false, var_1.e.c.e.d.x, true), vec4<bool>(arg_0.c.e.d.x, true, var_1.b, var_1.e.c.b), arg_0.a.a)), select(vec4<bool>(true, var_1.e.c.b, false, false), vec4<bool>(true, var_1.b, var_1.b, false), vec4<bool>(arg_0.a.b, arg_0.a.b, false, arg_0.c.a.x))), select(select(arg_0.a.a, var_1.e.c.a, false), !vec4<bool>(true, var_1.b, arg_0.c.e.d.x, arg_0.c.a.x), arg_0.a.a)), true, arg_0.a.c, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1263f)), _wgslsmith_f_op_f32(-arg_0.b.x)), Struct_1(1u, _wgslsmith_clamp_vec2_i32(-arg_2.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.x, var_1.d.x), arg_2.wz) & ~var_1.e.c.e.b, _wgslsmith_add_vec2_i32(-vec2<i32>(var_0.x, 0i), ~var_0)), firstLeadingBit(-(arg_2.wz ^ vec2<i32>(-14573i, -236i))), vec3<bool>(_wgslsmith_f_op_f32(exp2(arg_0.c.d.x)) == _wgslsmith_f_op_f32(f32(-1f) * -832f), true, var_1.b)));
    return ~arg_0.c.e.a;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(max(arg_1.e.b.x, select(-55019i, -4850i, all(vec4<bool>(arg_1.e.d.x, arg_1.b, false, arg_1.b)))), -16590i, _wgslsmith_add_i32(u_input.b, 2147483647i) << (~func_2(Struct_3(arg_1, arg_1.d, arg_1), -2147483647i, vec4<i32>(-61968i, -6786i, arg_1.e.c.x, -1i)) % 32u)) | -abs(-(~vec3<i32>(44212i, u_input.b, u_input.a)));
    let var_1 = abs(arg_1.c.wyw);
    var var_2 = select(arg_1.a, arg_1.a, !select(arg_1.a, select(!vec4<bool>(arg_1.b, true, false, false), select(arg_1.a, arg_1.a, arg_1.a), arg_1.a.x), arg_1.a.x));
    let var_3 = abs(vec3<i32>(-44312i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-8753i, arg_1.e.b.x, -1i), var_0), select(u_input.b, u_input.b, false)));
    let var_4 = Struct_5(arg_1.e, -(i32(-1i) * -u_input.a) & max(u_input.a, reverseBits(countOneBits(9231i))));
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5) -> Struct_4 {
    var var_0 = -57127i;
    let var_1 = select(_wgslsmith_clamp_u32(u_input.c | 1u, u_input.c, 0u), _wgslsmith_mod_u32(13147u ^ _wgslsmith_clamp_u32(~35179u, 0u, arg_2.a.a ^ 1u), 8173u), !any(arg_2.a.d.yz));
    var_0 = 1i;
    let var_2 = Struct_4(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(72308u, arg_1.a.c.x, arg_1.c.c.x, arg_2.a.a), arg_1.a.c ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), ~(~vec4<u32>(var_1, u_input.c, arg_1.c.e.a, 4294967295u)), !arg_2.a.d.x), -1361f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-618f)))), ~arg_1.c.e.a, arg_1.c.e.b, arg_1);
    var_0 = i32(-1i) * -1i;
    return Struct_4(vec4<u32>(func_2(Struct_3(Struct_2(var_2.e.c.a, true, vec4<u32>(var_2.c, arg_2.a.a, 38698u, 68714u), vec2<f32>(arg_1.c.d.x, var_2.e.a.d.x), var_2.e.a.e), var_2.e.a.d, Struct_2(var_2.e.c.a, true, arg_1.a.c, vec2<f32>(arg_1.c.d.x, arg_1.a.d.x), Struct_1(var_1, vec2<i32>(arg_1.a.e.c.x, arg_2.a.c.x), arg_1.a.e.c, var_2.e.a.a.zxy))), -2147483647i, -vec4<i32>(arg_1.a.e.c.x, -2147483647i, 1i, 0i)), 1u, arg_2.a.a & arg_1.c.e.a, 3759u) >> ((vec4<u32>(11325u, _wgslsmith_div_u32(var_2.a.x, 4294967295u), ~arg_2.a.a, var_1) >> (var_2.a % vec4<u32>(32u))) % vec4<u32>(32u)), var_2.e.a.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(1u), ~var_1, 49750u), ~countOneBits(~vec3<u32>(var_1, 16115u, arg_1.c.c.x))), vec2<i32>(arg_2.a.b.x & max(countOneBits(-1i), ~var_2.e.a.e.c.x), var_2.d.x), Struct_3(Struct_2(arg_1.c.a, !all(var_2.e.a.e.d.yy), vec4<u32>(1u, select(var_2.a.x, 2103u, true), var_2.c ^ u_input.c, _wgslsmith_mult_u32(arg_1.a.e.a, 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.d.x, -937f) - _wgslsmith_f_op_vec2_f32(round(arg_1.c.d))), func_1(_wgslsmith_mult_u32(arg_2.a.a, u_input.c), arg_1.a).e), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-585f)), _wgslsmith_f_op_f32(-var_2.e.c.d.x)))), Struct_2(!var_2.e.a.a, func_1(~var_2.c, arg_1.c).b, vec4<u32>(arg_2.a.a, ~arg_2.a.a, 1u, _wgslsmith_sub_u32(u_input.c, arg_2.a.a)), arg_1.c.d, var_2.e.c.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, Struct_3(func_1(14499u, Struct_2(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), false, vec4<u32>(0u, 34906u, 4294967295u, 76411u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-873f, 510f)), Struct_1(u_input.c, vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-27220i, 32496i), vec3<bool>(false, true, false)))), func_1(~u_input.c << ((u_input.c | u_input.c) % 32u), func_1(~95420u, func_1(1u, Struct_2(vec4<bool>(true, false, false, false), false, vec4<u32>(1u, 34337u, u_input.c, u_input.c), vec2<f32>(174f, 1730f), Struct_1(4152u, vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a), vec3<bool>(false, false, true)))))).d, func_1(_wgslsmith_clamp_u32(50973u, 0u, 4294967295u), func_1(u_input.c, func_1(0u, Struct_2(vec4<bool>(true, true, true, false), true, vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec2<f32>(530f, -647f), Struct_1(4294967295u, vec2<i32>(27035i, u_input.b), vec2<i32>(34183i, -1i), vec3<bool>(true, true, false))))))), Struct_5(func_1(u_input.c, func_1(u_input.c, func_1(u_input.c, Struct_2(vec4<bool>(false, true, false, false), false, vec4<u32>(u_input.c, u_input.c, u_input.c, 1274u), vec2<f32>(-110f, -802f), Struct_1(324u, vec2<i32>(-5188i, -32286i), vec2<i32>(u_input.a, -2147483647i), vec3<bool>(false, false, true)))))).e, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(18820i, u_input.b), min(u_input.a, 9482i), -30744i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b, -2147483647i), vec3<i32>(u_input.a, 1i, u_input.b)))));
    let var_1 = Struct_5(func_1(~var_0.e.a.e.a, Struct_2(var_0.e.c.a, true & any(vec2<bool>(false, var_0.b)), ~var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.b.x), _wgslsmith_f_op_f32(step(1425f, -716f))), Struct_1(min(91878u, u_input.c), -vec2<i32>(0i, 45214i), ~vec2<i32>(23171i, -2147483647i), vec3<bool>(var_0.e.c.b, var_0.b, var_0.e.a.b)))).e, _wgslsmith_add_i32(-func_4(any(var_0.e.a.e.d), func_4(var_0.e.a.e.d.x, var_0.e, Struct_5(Struct_1(6854u, var_0.e.a.e.b, var_0.d, vec3<bool>(var_0.e.c.b, var_0.e.a.e.d.x, false)), -56371i)).e, Struct_5(Struct_1(u_input.c, vec2<i32>(-2147483647i, u_input.a), vec2<i32>(36668i, u_input.a), vec3<bool>(var_0.e.c.e.d.x, false, var_0.b)), 1i)).d.x, var_0.e.c.e.b.x));
    let var_2 = _wgslsmith_add_vec2_u32(firstTrailingBit(~(var_0.e.c.c.xz | vec2<u32>(44898u, 0u))), _wgslsmith_mod_vec2_u32(var_0.a.xw, _wgslsmith_sub_vec2_u32(var_0.e.a.c.wx, var_0.a.xw)));
    let var_3 = !vec4<bool>(false, true, (_wgslsmith_sub_i32(var_1.b, u_input.b) ^ ~(-2472i)) == u_input.b, var_0.d.x < _wgslsmith_sub_i32(select(2147483647i, -1i, true), min(var_1.b, -2147483647i)));
    var var_4 = var_1.a.d.x;
    var_4 = !(!(!(var_0.e.c.e.d.x && false)));
    let var_5 = var_3.x;
    let var_6 = vec4<bool>(any(var_1.a.d.yz), true, true, any(func_4(false, Struct_3(var_0.e.c, _wgslsmith_div_vec2_f32(var_0.e.a.d, vec2<f32>(1122f, var_0.e.c.d.x)), var_0.e.a), Struct_5(Struct_1(4294967295u, var_1.a.b, vec2<i32>(78354i, 1i), var_0.e.a.e.d), var_1.b & 558i)).e.c.a));
    let var_7 = func_4(var_3.x, func_4(var_3.x, var_0.e, var_1).e, Struct_5(var_1.a, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-2147483647i, var_1.a.b.x));
}

