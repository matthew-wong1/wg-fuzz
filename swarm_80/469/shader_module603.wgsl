struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10198u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = -reverseBits(vec2<i32>(abs(1i), 1i));
    global0 = ~(~12632u);
    var var_1 = 108712u;
    let var_2 = -vec2<i32>(1i, reverseBits(i32(-1i) * -var_0.x));
    var var_3 = -9971i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 818f, -1000f, 185f))))) - vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(640f, 642f)), _wgslsmith_f_op_f32(min(-180f, -812f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-581f * 777f), -551f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    let var_0 = !(1u <= ~_wgslsmith_sub_u32(~u_input.b.x, 41140u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_3, arg_1.x, -418f), vec4<f32>(arg_3, -562f, -111f, 1567f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x)))), select(select(select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), all(vec4<bool>(arg_2.x, true, true, true))), vec3<bool>(arg_2.x, -1000f == arg_3, all(vec2<bool>(var_0, arg_2.x))), false), !select(!vec3<bool>(var_0, var_0, arg_2.x), vec3<bool>(false, true, false), !arg_2.x), arg_2.x), u_input.b);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(0u)), !(!select(vec3<bool>(arg_2.x, var_1.b.x, true), select(var_1.b, var_1.b, var_0), false)), ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(4422u, 1u, 0u) << (u_input.b % vec3<u32>(32u))), var_1.c & ~var_1.c, abs(u_input.b) << (min(vec3<u32>(33221u, 27994u, u_input.a), vec3<u32>(0u, var_1.c.x, 1u)) % vec3<u32>(32u))));
    var var_2 = 0i;
    var var_3 = Struct_3(Struct_2(vec3<i32>(_wgslsmith_div_i32(arg_0.x | arg_0.x, countOneBits(3940i)), -1i, ~2147483647i)), Struct_2(abs(abs(vec3<i32>(arg_0.x, 0i, arg_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(round(var_1.a)), select(!var_1.b, !var_1.b, !var_0), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_3 - -233f))) - -141f)), ~u_input.b.x);
    return _wgslsmith_div_u32(reverseBits(~(~4294967295u)), 1u);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: bool) -> f32 {
    global0 = _wgslsmith_mult_u32(u_input.b.x, u_input.a);
    var var_0 = vec3<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(u_input.b & vec3<u32>(func_2(vec2<i32>(-46750i, 27363i), vec2<f32>(1517f, -1000f), vec2<bool>(arg_2, arg_2), 1863f), u_input.a, u_input.a & u_input.a), u_input.b));
    let var_1 = Struct_2(vec3<i32>(abs(i32(-1i) * -1i), select(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 29286i, -2147483647i, 829i), vec4<i32>(1i, -2147483647i, -1i, 10870i)), 1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-2147483647i, -1i, -10893i)), arg_2), -max(1i, 14445i) ^ firstTrailingBit(2147483647i)));
    var_0 = u_input.b;
    global0 = u_input.a;
    return -332f;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    global0 = arg_2.x;
    global0 = reverseBits(_wgslsmith_mult_u32(~(~abs(65835u)), 1u));
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(40523u | _wgslsmith_mult_u32(arg_1, arg_2.x), ~(71094u << (arg_1 % 32u))), arg_2, ~(~vec2<u32>(arg_3, arg_2.x) ^ ~vec2<u32>(9935u, 1u))), ~_wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a, u_input.a) << (u_input.b.xz % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 33138u), vec2<u32>(1u, arg_3))), countOneBits(max(vec2<u32>(4294967295u, 1u), u_input.b.zx))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(875f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, arg_0.x, 1f), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -1268f, arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1296f, 109f, -807f, 538f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1553f, arg_0.x, 1798f, 429f)), true)))))), select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), false, true), vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true))), !(!any(vec4<bool>(true, false, false, true)))), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b << (~vec3<u32>(u_input.b.x, 5054u, u_input.b.x) % vec3<u32>(32u))));
    var var_1 = Struct_2(-vec3<i32>(_wgslsmith_mult_i32(14691i, 1i), -1i, 0i) >> (~vec3<u32>(_wgslsmith_mult_u32(8317u, arg_2.x), ~56831u, ~arg_1) % vec3<u32>(32u)));
    return Struct_2(select(vec3<i32>(max(~var_1.a.x, min(var_1.a.x, var_1.a.x)), select(max(var_1.a.x, var_1.a.x), ~var_1.a.x, any(vec3<bool>(var_0.b.x, true, false))), var_1.a.x), vec3<i32>(1i, var_1.a.x, i32(-1i) * -7642i), select(!var_0.b, select(var_0.b, var_0.b, select(vec3<bool>(true, true, var_0.b.x), var_0.b, var_0.b)), vec3<bool>(var_1.a.x != var_1.a.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_1(false, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -664f)))), _wgslsmith_div_u32(reverseBits(0u), ~1u), _wgslsmith_add_vec2_u32(u_input.b.xx, ~(vec2<u32>(1u, 4294967295u) | u_input.b.zx)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(7822u, u_input.b.x))), Struct_2(vec3<i32>(~2147483647i >> (1u % 32u), ~_wgslsmith_div_i32(-1799i, 2147483647i), i32(-1i) * -2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(902f, -1024f, 124f, 573f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2340f, 522f, -1127f, -496f)))), vec3<bool>(true, true, any(vec2<bool>(true, true))), abs(firstLeadingBit(vec3<u32>(u_input.a, u_input.b.x, u_input.a)))), _wgslsmith_f_op_f32(1094f - _wgslsmith_f_op_f32(max(1542f, _wgslsmith_f_op_vec4_f32(func_3(7930u)).x))), 83539u);
    var_0 = Struct_3(Struct_2(var_0.b.a), Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), -36567i, var_0.b.a.x & -2147483647i), var_0.a.a)), var_0.c, _wgslsmith_f_op_f32(sign(346f)), 38642u);
    global0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-var_0.c.a.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(true == var_0.c.b.x, !var_0.c.b.x, var_0.c.b.x, !var_0.c.b.x)), var_0.c.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -451f));
    let var_2 = false | !any(vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.e > 4294967295u));
    var var_3 = abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-325f, var_0.a.a.xx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(var_0.c.a.wwy)))), ~(~vec3<u32>(var_0.c.c.x, u_input.b.x, 0u) | u_input.b) ^ u_input.b, vec3<i32>(var_0.b.a.x, 2147483647i, select(var_0.a.a.x, firstLeadingBit(~(-2209i)), var_0.c.b.x)));
}

