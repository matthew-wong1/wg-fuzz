struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(Struct_1(-64466i), Struct_1(2147483647i), 1u, vec3<bool>(false, true, false), false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = max(_wgslsmith_mod_u32(global2.c, u_input.a.x), max(~_wgslsmith_clamp_u32(13368u, firstTrailingBit(4294967295u), countOneBits(global2.c)), 31519u));
    global0 = select(select(!global2.d, vec3<bool>(all(select(global0.yz, vec2<bool>(false, true), vec2<bool>(global0.x, global2.e))), global0.x, any(vec2<bool>(false, global0.x))), true), !vec3<bool>(global0.x, global0.x, global2.b.a >= abs(global2.b.a)), all(global2.d.zx));
    var var_1 = u_input.b.wyz;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1070f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1495f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -741f), -396f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-709f)), _wgslsmith_f_op_f32(f32(-1f) * -1148f))), 898f, -2010f));
    var var_3 = vec3<i32>(~(~var_1.x), _wgslsmith_mult_i32(abs(abs(-1i)), -abs(-u_input.e.x)), u_input.e.x);
    return ~var_3.x;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(-47129i);
    var var_1 = select(select(global0.zx, vec2<bool>(true, true && !global2.d.x), global2.e), global2.d.yy, global2.e);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_dot_vec3_i32(~(~((vec3<i32>(var_0.a, u_input.d.x, 37284i) & vec3<i32>(-2147483647i, -1i, global2.a.a)) ^ abs(u_input.d.xxy))), u_input.e.yyx);
    let var_4 = !all(vec4<bool>(!(arg_1.x != -1353f), global0.x, any(global2.d.zz), false));
    return Struct_1((func_3() & ~1i) & firstTrailingBit(global2.a.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a;
    global1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.a, -32359i), u_input.b.x & func_2(global2.c, vec3<f32>(-1014f, _wgslsmith_f_op_f32(f32(-1f) * -506f), 1f), i32(-1i) * -arg_2.x, _wgslsmith_f_op_f32(612f + 172f)).a);
    global0 = !(!vec3<bool>(arg_1.a <= (arg_2.x << (0u % 32u)), (true & global0.x) & all(vec2<bool>(global0.x, true)), firstLeadingBit(global2.c) >= u_input.a.x));
    var var_1 = !(!select(select(vec4<bool>(arg_3.e, global0.x, true, global2.d.x), vec4<bool>(global0.x, false, false, global0.x), true), select(!vec4<bool>(true, global2.e, true, true), vec4<bool>(false, global2.e, true, true), !vec4<bool>(global0.x, true, true, true)), select(!vec4<bool>(global2.e, arg_3.e, false, true), vec4<bool>(arg_3.e, true, false, false), select(vec4<bool>(true, global0.x, global0.x, global2.d.x), vec4<bool>(true, global2.d.x, arg_3.d.x, arg_3.d.x), vec4<bool>(false, false, arg_3.d.x, false)))));
    var_1 = !(!vec4<bool>(any(global0.xz), ~4294967295u != firstTrailingBit(arg_3.c), !(true || var_1.x), arg_3.d.x));
    return _wgslsmith_mult_i32(-arg_3.a.a, -61096i);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_mod_i32(u_input.d.x, func_4(Struct_1(_wgslsmith_div_i32(-2147483647i, global2.a.a)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 3807i, arg_2.a), u_input.d.wzw)), vec3<i32>(_wgslsmith_clamp_i32(arg_2.a, u_input.e.x, arg_2.a), -2147483647i, _wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(-4912i, arg_2.a))), Struct_2(func_2(4294967295u, vec3<f32>(1000f, 219f, 1000f), -2147483647i, -212f), arg_2, arg_0.x, global2.d, false))) & global2.a.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -553f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f * 1120f)) - 1808f)));
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~global2.a.a), ~u_input.e.x, func_3(), u_input.d.x), vec4<i32>(global2.a.a, firstLeadingBit(abs(global2.b.a)), 56401i, arg_2.a)), u_input.b);
    let var_2 = false;
    global1 = arg_2.a;
    return !all(select(!vec4<bool>(global2.d.x, true, false, global2.e), select(vec4<bool>(global0.x, false, true, false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, global2.d.x, true), vec4<bool>(true, global0.x, true, global2.d.x), global0.x)), !(!vec4<bool>(false, var_2, false, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 33668i, -1i) ^ u_input.e.wzw, vec3<i32>(1i, -1i, 0i) & u_input.d.zxw), _wgslsmith_mod_i32(-2147483647i, 56377i >> (global2.c % 32u))), global2.a.a) << (~u_input.a.x % 32u);
    var var_1 = u_input.c;
    global0 = vec3<bool>(true, false, global0.x | !func_1(vec3<u32>(global2.c, 0u, global2.c) ^ vec3<u32>(u_input.c, u_input.c, 92363u), 1u, Struct_1(-2147483647i), global0.yy));
    var var_2 = ~(_wgslsmith_mod_vec3_i32(u_input.e.yzx, u_input.d.zxz & vec3<i32>(26214i, 14551i, global2.a.a)) | ~vec3<i32>(33256i, u_input.e.x, 5614i)) & (vec3<i32>(u_input.b.x, abs(~25812i), -_wgslsmith_sub_i32(0i, -28437i)) << (abs(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, global2.c), vec3<u32>(global2.c, u_input.c, 88998u), vec3<u32>(39674u, 1u, 33145u)), vec3<u32>(global2.c, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)));
    global0 = global2.d;
    var var_3 = !(!vec3<bool>(global2.d.x, global0.x, false | global2.e));
    let var_4 = _wgslsmith_f_op_f32(566f - _wgslsmith_f_op_f32(step(-630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1373f, -650f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(151f, -420f)))))));
    var var_5 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-31269i, select(vec2<i32>(global2.a.a, -26985i), u_input.d.xy, !(select(-18072i, var_2.x, false) != 0i)), ~vec3<u32>(~_wgslsmith_clamp_u32(var_5.x, 1u, 63055u), ~(55542u & u_input.a.x), reverseBits(_wgslsmith_clamp_u32(0u, var_5.x, u_input.a.x))), var_2.x | abs(-20672i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1313f, var_4), vec2<f32>(840f, var_4))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1734f, var_4), vec2<f32>(var_4, var_4), vec2<bool>(global2.e, global0.x))))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_4, -1058f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-684f, 493f) - vec2<f32>(var_4, -1400f))))));
}

