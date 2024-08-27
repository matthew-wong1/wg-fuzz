struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global0 = u_input.b;
    var var_0 = !(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(false, false, false)))));
    let var_1 = Struct_4(true, -_wgslsmith_div_vec3_i32(arg_0, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.x, -2147483647i), arg_0) ^ arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(806f, -752f, 1300f))))), vec3<f32>(1f, 1f, 1f))))));
    global0 = ~u_input.b;
    let var_2 = _wgslsmith_mod_vec2_i32(min(var_1.b.yx >> (max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.yx), ~vec2<u32>(global0.x, u_input.a)) % vec2<u32>(32u)), max(arg_0.yz, -(~arg_0.xx))), select(var_1.b.zx, vec2<i32>(-1i) * -select(vec2<i32>(2147483647i, var_1.b.x), vec2<i32>(0i, arg_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(false, all(vec4<bool>(var_0.x, var_1.a, true, false)))));
    return !(_wgslsmith_f_op_f32(-var_1.c.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1343f, -1286f))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(arg_2, select(~vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_2, arg_2), 2147483647i, -arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, ~(-11830i), arg_1.d.x, arg_2), vec4<i32>(-1i) * -vec4<i32>(1i, arg_1.d.x, arg_2, 9268i)), vec4<bool>(arg_1.a, func_3(vec3<i32>(69482i, 3i, arg_0) | vec3<i32>(arg_0, arg_1.d.x, arg_2)), !arg_1.a || arg_3.a, func_3(countOneBits(vec3<i32>(arg_2, arg_2, 1i))))));
    global0 = max(vec4<u32>(1u, ~arg_1.c.x, 31882u, ~global0.x), vec4<u32>(0u, firstLeadingBit(0u), countOneBits(~global0.x), _wgslsmith_dot_vec3_u32(global0.zxw, ~vec3<u32>(global0.x, 120246u, 41461u) >> (u_input.b.zzz % vec3<u32>(32u)))));
    var var_1 = select(_wgslsmith_f_op_f32(trunc(-1094f)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1085f), _wgslsmith_f_op_f32(1425f + _wgslsmith_f_op_f32(sign(351f))))), all(select(!vec3<bool>(arg_1.a, true, arg_1.a), select(vec3<bool>(false, arg_3.a, false), !vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, false, arg_1.a)), ~var_0.a <= arg_2)), true);
    var var_2 = ~u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -2354f, -354f, -915f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -1526f, 1150f, -663f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-436f, -324f, -958f, -1000f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, 255f, 908f, -395f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -241f, 586f, -338f) + vec4<f32>(591f, -194f, -562f, 373f)) - _wgslsmith_div_vec4_f32(vec4<f32>(543f, -1129f, -1000f, 438f), vec4<f32>(1000f, 1557f, 902f, -723f)))) + vec4<f32>(-382f, _wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(460f - 406f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(f32(-1f) * -1480f))), _wgslsmith_f_op_f32(f32(-1f) * -1934f)))));
    return Struct_4(true, vec3<i32>(~(~1i), 2451i, arg_1.d.x), var_3.wwz);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x + -396f), _wgslsmith_div_f32(-228f, arg_0.c.x)))))) && select(all(select(!vec2<bool>(true, arg_0.a), vec2<bool>(arg_1.b.a, arg_1.d.a), select(vec2<bool>(false, true), vec2<bool>(arg_1.d.a, true), vec2<bool>(false, arg_1.a.a)))), _wgslsmith_f_op_f32(-arg_0.c.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.x)) * arg_0.c.x), arg_0.a);
    var var_1 = select(select(vec2<bool>(arg_1.d.a, arg_0.a), vec2<bool>(select(true, !arg_1.a.a, arg_0.a & true), true), select(vec2<bool>(!arg_1.a.a, arg_1.a.a), vec2<bool>(any(vec3<bool>(arg_0.a, true, true)), true), true)), vec2<bool>(arg_1.a.a, arg_0.a), false);
    var_1 = vec2<bool>(false, var_1.x & true);
    let var_2 = _wgslsmith_f_op_f32(trunc(arg_0.c.x));
    var_1 = !vec2<bool>(func_2(~0i, Struct_1(var_1.x, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 1u, 4294967295u, arg_1.b.c.x), vec4<u32>(global0.x, u_input.b.x, u_input.a, 1u)), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(global0.x, 1u, 52516u, arg_1.b.b.x)), vec2<i32>(arg_0.b.x, arg_1.c.x) >> (vec2<u32>(arg_1.d.c.x, 0u) % vec2<u32>(32u))), firstLeadingBit(-3021i), arg_1.d).a, arg_1.a.a == (arg_1.a.d.x >= arg_0.b.x));
    return select(vec3<bool>(arg_1.b.a, true, var_1.x), !select(!select(vec3<bool>(true, arg_1.a.a, var_1.x), vec3<bool>(arg_0.a, true, arg_1.d.a), vec3<bool>(false, arg_1.d.a, true)), select(!vec3<bool>(var_1.x, arg_0.a, arg_0.a), vec3<bool>(arg_1.a.a, var_1.x, true), select(vec3<bool>(true, false, arg_0.a), vec3<bool>(var_1.x, false, false), true)), !select(vec3<bool>(false, arg_0.a, var_1.x), vec3<bool>(true, true, arg_1.a.a), vec3<bool>(arg_0.a, var_1.x, true))), !vec3<bool>(!arg_0.a, arg_0.a, var_1.x));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = func_4(func_2(~(-28947i), arg_1.a, _wgslsmith_mult_i32(select(73908i, -arg_1.d.d.x, !arg_2.x), i32(-1i) * -arg_1.b.d.x), arg_1.a), Struct_3(arg_1.d, Struct_1(!all(vec4<bool>(arg_1.b.a, arg_1.a.a, arg_2.x, arg_1.d.a)), arg_1.d.b, max(vec4<u32>(arg_3.x, 0u, 4294967295u, 57646u), vec4<u32>(46950u, 1u, arg_3.x, arg_1.a.c.x)) & reverseBits(vec4<u32>(2841u, 51294u, u_input.a, 33585u)), vec2<i32>(arg_1.d.d.x, i32(-1i) * -15635i)), func_2(516i, arg_1.d, ~min(arg_1.b.d.x, 35034i), arg_1.d).b.zx, arg_1.d));
    let var_1 = func_2(select(arg_1.c.x, countOneBits(-64527i), true), Struct_1(true, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.c.x & arg_3.x, 4294967295u, arg_3.x << (global0.x % 32u), reverseBits(51501u)), abs(~arg_1.a.b)), u_input.b, ~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.a.d.x, 29291i), arg_1.b.d) ^ _wgslsmith_clamp_vec2_i32(-arg_1.a.d, select(arg_1.b.d, vec2<i32>(arg_1.b.d.x, 1i), arg_1.b.a), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1.c.x), vec2<i32>(12638i, arg_1.a.d.x)))), 2147483647i, arg_1.d).c.x;
    var var_2 = Struct_4(true, max(select(~vec3<i32>(11469i, arg_1.a.d.x, arg_1.a.d.x), vec3<i32>(0i, max(-50458i, arg_1.d.d.x), ~arg_1.c.x), !(!var_0)), max(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.b.d.x, -1i, arg_1.c.x), vec3<i32>(32546i, 2147483647i, -2147483647i)), func_2(_wgslsmith_div_i32(arg_1.b.d.x, arg_1.a.d.x), Struct_1(arg_2.x, arg_1.d.b, u_input.b, vec2<i32>(2147483647i, arg_1.d.d.x)), _wgslsmith_sub_i32(arg_1.d.d.x, 21121i), arg_1.a).b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1024f + arg_0)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1796f, var_1, -596f) - vec3<f32>(var_1, var_1, -293f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -780f, -175f))));
    var var_3 = arg_1.d;
    return Struct_4(true, vec3<i32>(arg_1.c.x, ~min(func_2(var_2.b.x, arg_1.d, var_3.d.x, arg_1.b).b.x, i32(-1i) * -28089i), -1i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))), var_2.c.x, arg_0));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>) -> u32 {
    global0 = _wgslsmith_mult_vec4_u32(u_input.b >> (abs(~u_input.b) % vec4<u32>(32u)), u_input.b);
    var var_0 = ~(~(_wgslsmith_mod_u32(1u, u_input.c) | ~global0.x) & ~(~(~21882u)));
    var var_1 = ~global0.x;
    var_1 = u_input.c;
    var_1 = global0.x;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.yyy;
    global0 = vec4<u32>(3912u, 6870u, 4294967295u, ~var_0.x);
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x & 1u, u_input.c, global0.x), ~vec3<u32>(global0.x, func_5(func_1(-1000f, Struct_3(Struct_1(false, u_input.b, vec4<u32>(var_0.x, u_input.c, 1u, var_0.x), vec2<i32>(10910i, -3563i)), Struct_1(true, vec4<u32>(global0.x, 4294967295u, global0.x, 11976u), vec4<u32>(4294967295u, 1u, u_input.c, 0u), vec2<i32>(-144i, -1i)), vec2<i32>(29950i, -35789i), Struct_1(true, vec4<u32>(13275u, var_0.x, 0u, 36817u), vec4<u32>(0u, 0u, 0u, var_0.x), vec2<i32>(1i, 1523i))), vec2<bool>(true, false), vec3<u32>(global0.x, u_input.a, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, -430f))), u_input.c));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(630f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1687f, -1000f))), 1f)));
    var var_3 = _wgslsmith_sub_i32(~(-349i), 1i) ^ min(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-3153i, 1i), vec2<i32>(10789i, 12933i))), firstTrailingBit(~(-1i)));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~firstTrailingBit(u_input.b)), select(select(firstTrailingBit(vec4<u32>(1u, global0.x, var_0.x, var_1.x)), vec4<u32>(var_1.x, global0.x, 1u, 1u) | vec4<u32>(57538u, 0u, 18731u, 24235u), true), ~abs(u_input.b), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true))), ~_wgslsmith_mult_vec4_u32(u_input.b, min(u_input.b, vec4<u32>(4294967295u, var_0.x, 0u, u_input.b.x)))), vec4<u32>(~var_1.x, firstTrailingBit(1u), ~reverseBits(1u), u_input.b.x));
    var_3 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-33019i, 8236i, 5273i, 1i), vec4<i32>(0i, -16473i, -1i, 56912i)), ~(-1699i), ~min(-2147483647i, -1i)), vec3<i32>(~1i, func_2(_wgslsmith_clamp_i32(-2147483647i, 19338i, -30295i), Struct_1(false, u_input.b, vec4<u32>(1u, 50312u, var_0.x, 4294967295u), vec2<i32>(1i, 2147483647i)), 12287i, Struct_1(true, vec4<u32>(u_input.b.x, 20312u, 4294967295u, u_input.b.x), u_input.b, vec2<i32>(-6943i, -1i))).b.x, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec4<i32>(-17246i << (global0.x % 32u), 34689i, func_1(-316f, Struct_3(Struct_1(true, vec4<u32>(4294967295u, var_0.x, var_1.x, 42584u), u_input.b, vec2<i32>(-1i, -1i)), Struct_1(true, vec4<u32>(70746u, 19629u, var_1.x, 123898u), u_input.b, vec2<i32>(21592i, -1i)), vec2<i32>(-2147483647i, 0i), Struct_1(false, u_input.b, u_input.b, vec2<i32>(2147483647i, 2147483647i))), vec2<bool>(false, true), vec3<u32>(33165u, global0.x, 20322u)).b.x, _wgslsmith_sub_i32(-19438i, 1i)))), min(~select(vec2<u32>(56359u, 0u), global0.wy, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_sub_vec2_u32(firstTrailingBit(~var_1.yz), var_0.xz)));
}

