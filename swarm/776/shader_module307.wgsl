struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(18180u), Struct_1(1u), Struct_1(4294967295u), Struct_1(28458u), Struct_1(1u), Struct_1(3571u), Struct_1(53333u), Struct_1(58822u), Struct_1(87818u), Struct_1(7760u), Struct_1(40277u), Struct_1(1u), Struct_1(71220u), Struct_1(34881u), Struct_1(42754u), Struct_1(0u));

var<private> global1: u32 = 1u;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(0u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec3<i32> {
    global2 = select(vec4<bool>(global2.x, true, !all(vec3<bool>(global2.x, global2.x, false)), !(!global2.x)), select(vec4<bool>(global2.x, !global2.x, false, false), vec4<bool>(true, global2.x, true != global2.x, global2.x), select(!(!vec4<bool>(false, global2.x, true, true)), vec4<bool>(false, all(vec2<bool>(false, false)), global2.x, arg_1.a > 0u), vec4<bool>(global2.x && global2.x, all(vec4<bool>(global2.x, false, true, global2.x)), true, false))), vec4<bool>(global2.x, !global2.x, -(u_input.a.x << (7352u % 32u)) == arg_1.b.x, global2.x && !all(global2.zy)));
    let var_0 = Struct_3(firstLeadingBit(~abs(1u)), _wgslsmith_clamp_vec4_i32(-firstTrailingBit(_wgslsmith_mod_vec4_i32(arg_1.b, arg_0.b)), abs(arg_1.b), vec4<i32>(arg_0.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b.wyy, arg_1.b.xww), -arg_0.b.zxw), i32(-1i) * -1i, 11235i)));
    let var_1 = Struct_3(arg_1.a, -vec4<i32>(reverseBits(-var_0.b.x), var_0.b.x, var_0.b.x | arg_0.b.x, 1i));
    var var_2 = reverseBits(arg_1.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), 1000f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(206f, 1241f))))))));
    return select(-_wgslsmith_clamp_vec3_i32(select(-vec3<i32>(4862i, -6392i, -1i), vec3<i32>(42590i, var_2.x, var_0.b.x), !vec3<bool>(global2.x, true, true)), var_1.b.wxw & vec3<i32>(2147483647i, -6701i, var_2.x), var_2.ywx), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~arg_1.b.x, arg_1.b.x), vec3<i32>(u_input.a.x, 12959i, var_1.b.x)), var_2.x, _wgslsmith_sub_i32(-var_2.x, reverseBits(arg_0.b.x))), vec3<bool>(!all(select(vec2<bool>(global2.x, global2.x), global2.xy, vec2<bool>(false, false))), true, all(select(vec4<bool>(true, false, global2.x, false), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, false, global2.x, false), true), -254f < var_3.x))));
}

fn func_2() -> vec3<i32> {
    global1 = _wgslsmith_div_u32(0u, 30674u);
    return _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), u_input.a.x, 26055i), firstTrailingBit(vec3<i32>(-18867i, 47458i, u_input.a.x)) ^ func_3(Struct_3(u_input.c.x, vec4<i32>(u_input.a.x, -3228i, 48069i, 47123i)), Struct_3(u_input.c.x, vec4<i32>(26723i, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, -25463i), reverseBits(vec3<i32>(-5509i, u_input.a.x, 1i) & vec3<i32>(0i, u_input.a.x, 10104i))) | -(vec3<i32>(u_input.a.x, -75826i, u_input.a.x) ^ vec3<i32>(2147483647i, u_input.a.x, -1i)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<Struct_1, 16>();
    var var_0 = firstLeadingBit(func_2() & ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & -(~countOneBits(abs(vec3<i32>(43825i, 2147483647i, 2147483647i))));
    let var_1 = func_2().x & -2147483647i;
    let var_2 = Struct_3(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~70663u, u_input.b, countOneBits(1u)), 0u), firstTrailingBit(~_wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, var_1, var_1, 588i), vec4<i32>(u_input.a.x, var_0.x, 19863i, var_1)), -vec4<i32>(u_input.a.x, var_0.x, 2147483647i, var_0.x))));
    global2 = select(vec4<bool>(all(!select(arg_1.yz, arg_1.zy, global2.x)), true, u_input.a.x < u_input.a.x, false), vec4<bool>(true, !global2.x, global2.x, !arg_1.x), !any(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(true, true, true, arg_1.x), !arg_1.x)));
    return Struct_2(vec3<i32>(abs(var_2.b.x), 1i | -var_2.b.x, firstTrailingBit(_wgslsmith_mod_i32(var_0.x, 0i) << (~u_input.b % 32u))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(120599u, 44940u, 39087u), vec3<u32>(~49966u, 92362u, _wgslsmith_mult_u32(var_2.a, 46332u)))), Struct_1(4294967295u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, _wgslsmith_f_op_f32(-768f * 1000f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(941f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(963f)) - -1000f)), arg_1.yy)), !(!arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, global2.zyy);
    var var_1 = firstLeadingBit(882u);
    var var_2 = any(!vec4<bool>(var_0.e | var_0.e, all(global2.wx), var_0.e, true));
    let var_3 = vec4<f32>(1474f, _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(abs(634f)), _wgslsmith_div_f32(var_0.d.x, var_0.d.x));
    var_0 = func_1(var_0.e, !(!global2.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(sign(var_3.x))), _wgslsmith_div_f32(-140f, var_0.d.x), global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_3.wwz, var_3.xxy))) - var_3.ywz));
}

