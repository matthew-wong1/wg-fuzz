struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = !select(vec4<bool>(!(u_input.a.x > 1u), true, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true);
    let var_1 = -19837i;
    var_0 = !select(!select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), true), !vec4<bool>(true, !var_0.x, var_0.x, false), vec4<bool>(!(-2147483647i <= var_1), all(!vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x, false));
    let var_2 = vec3<i32>(-1i) * -(~(-countOneBits(vec3<i32>(var_1, -2147483647i, -2147483647i))));
    var var_3 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -9397i, firstLeadingBit(-8100i) >> (_wgslsmith_div_u32(u_input.a.x, 1u) % 32u), -16098i), max(~abs(var_2), var_2), select(var_2, ~countOneBits(vec3<i32>(-3092i, 1365i, -1i)), !var_0.yyw)), vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.x, -15421i, var_2.x), ~vec4<i32>(-1i, var_1, arg_0.x, var_1)), var_1, all(vec4<bool>(false, false, var_0.x, var_0.x))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(arg_0.x, 2147483647i, var_1, var_1), -vec4<i32>(2147483647i, -65608i, var_2.x, var_1), arg_0.x < -1i), min(select(vec4<i32>(1i, var_2.x, var_1, var_2.x), vec4<i32>(1i, var_2.x, -9196i, var_1), vec4<bool>(true, var_0.x, false, true)), min(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, -23594i), vec4<i32>(var_2.x, var_2.x, -15430i, 20493i)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 0i, var_2.x, 2147483647i), vec4<i32>(2147483647i, -25403i, var_1, var_2.x)), ~vec4<i32>(0i, var_1, arg_0.x, var_2.x)), _wgslsmith_clamp_i32(-var_2.x, ~16960i, -var_2.x))), !vec3<bool>(any(select(var_0.wyw, var_0.wyz, false)), all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), select(!var_0.x, true, true)));
    return !var_0.zzw;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, 377f)) - _wgslsmith_div_vec2_f32(vec2<f32>(861f, 175f), vec2<f32>(-365f, -851f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, -1706f))))), _wgslsmith_sub_vec3_i32(-(~vec3<i32>(-46161i, arg_0, 61952i)), abs(-vec3<i32>(arg_0, arg_0, 1i))), func_3(vec2<i32>(-1i) * -vec2<i32>(arg_0, 25933i))), u_input.a);
    var_0 = Struct_3(var_0.a, abs(~vec4<u32>(var_0.b.x ^ u_input.a.x, min(u_input.a.x, var_0.b.x), 1u, u_input.a.x)));
    var var_1 = var_0.a.b.yy;
    var var_2 = Struct_4(true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.x))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.a.x, -554f)), var_0.a.a.x)));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1103f - _wgslsmith_f_op_f32(f32(-1f) * -1870f))) + _wgslsmith_f_op_f32(abs(-535f))) - _wgslsmith_f_op_f32(func_2(abs(-(~1i)))));
    var var_1 = 61681i;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1269f))))))));
    var var_3 = u_input.a.xww;
    let var_4 = u_input.a.x;
    return Struct_5(u_input.a.wyy, false);
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> Struct_1 {
    let var_0 = select(select(!(!vec2<bool>(true, arg_0)), !func_3(vec2<i32>(5170i, -2147483647i)).yz, select(vec2<bool>(!arg_0, !arg_0), select(!vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), false), false)), vec2<bool>(!arg_1.b, arg_1.b), _wgslsmith_mult_u32(57023u, 26874u) > u_input.a.x);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, 924f)))), _wgslsmith_mult_vec3_i32(-firstLeadingBit(vec3<i32>(-56589i, -16564i, -1i)), max(firstTrailingBit(vec3<i32>(1i, 26364i, 15593i)), abs(vec3<i32>(57868i, 2147483647i, 1i)))), !(!vec3<bool>(false, arg_0, false))), ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(arg_1.a.x, countOneBits(33250u)), min(1u, 4294967295u), func_1().a.x << (52866u % 32u)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-24527i);
    let var_1 = func_4(true, func_1());
    let var_2 = Struct_5(vec3<u32>(1u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), max(1u, u_input.a.x)), max(_wgslsmith_div_u32(reverseBits(1u), ~u_input.a.x), firstLeadingBit(u_input.a.x))), true);
    let var_3 = vec4<bool>(!any(!var_1.c.yy), var_1.c.x, true, false);
    var var_4 = u_input.a.wwy;
    let var_5 = false;
    var_4 = ~(~u_input.a.wxx);
    var_4 = u_input.a.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

